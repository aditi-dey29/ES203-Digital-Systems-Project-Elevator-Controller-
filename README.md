# ES203-Digital-Systems-Project-Elevator-Controller #
A Verilog code to implement a parametrized lift controller with N floors. Verilog is a hardware description language similar to C used to model electronic systems at various abstraction levels.

## Assumptions made ##
* If the lift is serving requests in one direction (either up or down), it doesn’t change its direction before completing requests in that direction.
* The lift stops and becomes idle after serving all the requests at the latest destination floor.
* When the lift reaches the destination floor, the arrival sensors installed generate a control signal to instruct the opening of the lift door.
                
A testbench that validates the correctness of the verilog code is also written.  
The waveforms of all the input signals and the corresponding output signals are also generated.
