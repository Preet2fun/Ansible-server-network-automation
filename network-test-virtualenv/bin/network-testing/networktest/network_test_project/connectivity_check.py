# This example uses Python argparse to parse command line arguments for a testbed file input, and passes it to the script as the testbed script parameter
# In pyATS, test scripts are written and executed through AEtest Package.

from pyats import aetest
import re
import logging


#Create and configure logger 
logging.basicConfig(filename="newfile.log", 
                    format='%(asctime)s %(message)s', 
                    filemode='w') 
  
#Creating an object 
logger=logging.getLogger()

class CommonSetup(aetest.CommonSetup):

    @aetest.subsection
    def check_topology(self,
                       testbed,
                       ios1_name = 'mpls1',
                       ios2_name = 'mpls2'):
        mpls1 = testbed.devices[ios1_name]
        mpls2 = testbed.devices[ios2_name]

        # add them to testscript parameters
        self.parent.parameters.update(mpls1 = mpls1, mpls2 = mpls2)

        # get corresponding links
        links = mpls1.find_links(mpls2)

        assert len(links) >= 1, 'require one link between ios1 and ios2'


    @aetest.subsection
    def establish_connections(self, steps, mpls1, mpls2):
        with steps.start('Connecting to %s' % mpls1.name):
            mpls1.connect()

        with steps.start('Connecting to %s' % mpls2.name):
            mpls2.connect()

@aetest.loop(device=('mpls1', 'mpls2'))
class PingTestcase(aetest.Testcase):

    @aetest.test.loop(destination=('10.100.100.111', '10.100.100.112'))
    def ping(self, device, destination):
        try:
            result = self.parameters[device].ping(destination)

        except Exception as e:
            self.failed('Ping {} from device {} failed with error: {}'.format(
                                destination,
                                device,
                                str(e),
                            ),
                        goto = ['exit'])
        else:
            match = re.search(r'Success rate is (?P<rate>\d+) percent', result)
            success_rate = match.group('rate')

            logger.info('Ping {} with success rate of {}%'.format(
                                        destination,
                                        success_rate,
                                    )
                               )

class CommonCleanup(aetest.CommonCleanup):

    @aetest.subsection
    def disconnect(self, steps, mpls1, mpls2):
        with steps.start('Disconnecting from %s' % mpls1.name):
            mpls1.disconnect()

        with steps.start('Disconnecting from %s' % mpls2.name):
            mpls2.disconnect()

if __name__ == '__main__':
    import argparse
    from pyats.topology import loader

    parser = argparse.ArgumentParser()
    parser.add_argument('--testbed', dest = 'testbed',
                        type = loader.load)

    args, unknown = parser.parse_known_args()

    aetest.main(**vars(args))
