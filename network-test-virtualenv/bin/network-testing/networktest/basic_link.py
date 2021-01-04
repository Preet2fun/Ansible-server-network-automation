# loader our newly minted testbed file
from pyats.topology import loader
testbed = loader.load('ios_testbed.yaml')

# access the devices
print(testbed.devices)


mpls_1 = testbed.devices['mpls1']
mpls_2 = testbed.devices['mpls2']

# find links from one device to another
for link in mpls_1.find_links(mpls_2):
    print(repr(link))


# establish basic connectivity
mpls_1.connect()
mpls_2.connect()

# issue commands
print(mpls_1.execute('show version'))
print(mpls_2.execute('show ip int brief'))

