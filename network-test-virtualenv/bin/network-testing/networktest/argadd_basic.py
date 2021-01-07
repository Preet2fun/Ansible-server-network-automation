

# Example
# -------
#
#   script arguments demo

import logging
from pyats import aetest

logger = logging.getLogger(__name__)

class Testcase(aetest.Testcase):

    @aetest.test
    def test(self, testbed, vlan):
        logger.info('Testbed = %s' % testbed)
        logger.info('Vlan =  %s' % vlan)

# main()
if __name__ == '__main__':

    # set logger level
    logger.setLevel(logging.INFO)

    # local imports
    import sys
    import argparse
    from pyats.topology import loader

    parser = argparse.ArgumentParser(description = "standalone parser")
    parser.add_argument('--testbed', dest = 'testbed')
    parser.add_argument('--vlan', dest = 'vlan')

    # parse args
    args, sys.argv[1:] = parser.parse_known_args(sys.argv[1:])

    # post-parsing processing
    testbed = loader.load(args.testbed)
    vlan = int(args.vlan)

    # and pass all arguments to aetest.main() as kwargs
    aetest.main(testbed = testbed, vlan = vlan)

