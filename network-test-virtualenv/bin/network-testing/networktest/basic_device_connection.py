# Example
# -------
#
#   using the above testbed yaml file in pyATS

from genie.testbed import load

def main():

    # Instantiate the Testbed
    testbed = load('my_testbed.yaml')
    print(f"\n======= TESTBED INFO =======\n")
    print(f"\tTestbed Value (object): {testbed}")
    print(f"\n======= END TESTBED INFO =======\n")
    device = testbed.devices['CISCOCSR']
    device.connect()
    #device.execute('show version')
    response = device.parse('show version')
    #print(f"\nResponse from sbx-n9kv-ao is of type {type(response)} and length {len(response)}")
    #print(response)
    #print()
    #print(json.dumps(response, indent=4))
    #print(response.keys())


# Standard call to the main() function.
if __name__ == '__main__':
    main()

