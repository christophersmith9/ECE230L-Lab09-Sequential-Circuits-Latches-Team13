# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Trace Hughey, Christopher Smith
## Summary
We learned to use combinational logic as well as implementing memory type functions into our digital circuits using multiplexers, demultiplexers, and D type latches.
## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
The reason for this is that Verilog connects basic logic gates without the necessary control mechanisms. Structural Verilog doesn't wait for sequential logic, it does everything all at once.
### What is the meaning of always @(*) in a sensitivity block?
In Verilog the always block is a combinational logic block, meaning whenever one of the variables it's reading changes it will reevaluate it. The star means it's evaluating all inputs and outputs.
### What importance is memory to digital circuits?
Memory is crucial to digital systems as it allows for data retrieval at later dates and recalling previous knowledge. This allows a person to store potentially crucial information in a system, save and close it, then recall the exact same data later. It also allows for sequential logic, say somebody inputs information into a log in, it double checks the inputted information against it's own stored information confirming that the person is who they say they are, then it logs you in to a different page.
