#this is script for basic device list reading from testbed file
from pyats.topology import loader
from pprint import pprint

# access the devices from test bed
print("\n ---------------- Reading testbed file -------------------- ")
testbed = loader.load('testbed.yaml')

print("\n ----------------- displying list of device ----------------")
#print(testbed.devices)

for device in testbed.devices.items():
    print(f"(Devices availabe in list are : {device})")

# establish basic connectivity
print("\n ----------------- checking connection of devices ------------")

mpls1 = testbed.devices['mpls1']
mpls2 = testbed.devices['mpls2']

print(f"connection to device mpls1 is : {mpls1.connect()}")
print(f"connection to device mpls2 is : {mpls2.connect()}")


# issue commands
print(mpls1.execute('show ip int brief'))
print(mpls2.execute('show ip int brief'))
