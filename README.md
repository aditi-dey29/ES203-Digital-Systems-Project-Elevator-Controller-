# ES203-Digital-Systems-Project-Elevator-Controller #
A Verilog code to implement a parametrized lift controller with N floors. Verilog is a hardware description language similar to C used to model electronic systems at various abstraction levels.

## Assumptions made ##
* If the lift is serving requests in one direction (either up or down), it doesn’t change its direction before completing requests in that direction.
* The lift stops and becomes idle after serving all the requests at the latest destination floor.
* When the lift reaches the destination floor, the arrival sensors installed generate a control signal to instruct the opening of the lift door.
                
A testbench that validates the correctness of the verilog code is also written.  
The waveforms of all the input signals and the corresponding output signals are also generated.

This project was done in December 2021 as a part of ES203 Digital Systems course at IIT Gandhinagar. It was done in group of two- Ruchit Chudasama (20110172) and Aditi Dey (20110007). 

### Results:
<img height="400" src="1.png">
<img height="400" src="2.png">
<img height="400" src="3.png">
<img height="400" src="4.png">
