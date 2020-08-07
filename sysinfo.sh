#!/bin/bash

# This script displays information about the system on which it is executed.


# Tell the user that the script is starting.
echo "Script starting ..."


# Display the hostname of the system.
echo "Running on host $HOSTNAME"


# Display the current date and time when this information was collected.
echo "Date and time is: `date`"

# Display the kernel release followed by the architecture.
echo "Kernel release is: `uname -r` and architecture is: `uname -s`"

# Display the disk usage in a human readable format.

# End the script by letting the user know that it is done.
