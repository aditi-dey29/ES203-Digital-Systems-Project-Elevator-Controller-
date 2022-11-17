# ES203-Digital-Systems-Project-Elevator-Controller #
A Verilog code to implement a parametrized lift controller with N floors. Verilog is a hardware description language similar to C used to model electronic systems at various abstraction levels.

## Assumptions made ##
* If the lift is serving requests in one direction (either up or down), it doesn’t change its direction before completing requests in that direction.
* The lift stops and becomes idle after serving all the requests at the latest destination floor.
* When the lift reaches the destination floor, the arrival sensors installed generate a control signal to instruct the opening of the lift door.
                

## Variable names and descriptions ##
Name of variable | Parameter values | Description
| :---: | :---: | :---:
CLK  | Time period = 10ns | Periodic signal
reset  | 1-bit binary | Resets the list to initial state
req_floor |  7-bit integer    |   The button pressed by the user, i.e. the floor requested by the user
stop |   1-bit binary    |    Single bit variable. 1 meaning that the lift has stopped on some floor and 0 meaning that the list is in motion
up |    1-bit binary   |    1, meaning that the lift is going in the upward direction
down |   1-bit binary   |    1, meaning that the lift is going in the downward direction
current_floor |  7-bit integer    |    The floor number at which the lift is present at that instant
requests |  64-bit binary    |    Keeps a track of which all requests are pending

   

## Results ##
* A testbench that validates the correctness of the verilog code is also written.  
* The waveforms of all the input signals and the corresponding output signals are also generated.

<img height="300" src="1.png">
<img height="300" src="2.png">
<img height="300" src="3.png">
<img height="300" src="4.png">

This project was done in December 2021 as a part of ES203 Digital Systems course at IIT Gandhinagar. It was done in group of two- Ruchit Chudasama (20110172) and Aditi Dey (20110007). 
