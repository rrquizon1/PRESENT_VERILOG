PRESENT_VERILOG
Implementation of PRESENT KEY algorithm in verilog submitted as requirements for EE 227 of Master of Engineering of Electrical Engineering program from University of the Philippines Diliman.

This project follows the following state machine for the encryption process. It follows the original process of the PRESENT paper. See below:
![image](https://github.com/rrquizon1/PRESENT_VERILOG/assets/70574862/a1561c93-2a49-44b9-9ff3-be47665c12cb)

See sample simulation waveforms below.The memories data anda data_out are input and output data respectively:
![image](https://github.com/rrquizon1/PRESENT_VERILOG/assets/70574862/52f9c600-6efc-45ce-b198-63ea29d5107b)
The output for 64 bit 00000000000000 is the same as from the test vector. See below for screenshot from the test vectors from the original paper.

![image](https://github.com/rrquizon1/PRESENT_VERILOG/assets/70574862/aa1c126f-3575-43b4-9e65-567586e78bad)
