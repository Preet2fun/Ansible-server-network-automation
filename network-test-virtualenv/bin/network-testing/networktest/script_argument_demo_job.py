# Example
# -------
#
#   job file demonstrating passing script arguments to testscripts
# Keep in mind that during Easypy Execution, the testbed argument is automatically passed to the testscript if pyats run job was run with the --testbed-file and/or --logical-test#bed-file arguments.

from pyats.easypy import run

# job file requires a main block
def main():

    run('argadd_basic.py', vlan = 50)
