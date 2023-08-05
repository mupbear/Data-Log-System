Linux-CAN-Data-Logger

1. Installation instructions

	1) Run compile.sh, ensure a new folder is created called "dist" and it contains one binary file.
	2) Install the config files from linux-config.
	3) Move the binary from dist into the ExecStart folder of the previously installed service.
	4) Enable the service and reboot.

2. Troubleshooting

	1) Ensure there are 120 Ohm termination resistors  between CAN_H and CAN_L wires.
	2) Ensure the Python version is correct.
	3) Ensure no breaking changes were made to Raspberry Pi Kernel as of 13/04/2023.

