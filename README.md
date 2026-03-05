# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
- Colby Allen, Austin Bartram

## Summary
- We learned a lot in this lab, including how to write a half subtractor, write a module for one's complement, and two's complement through the use of full adders and then tie it all together. We also learned to debug different Vivado errors.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
- A half adder doesn't use an inverted wire line, so for our subtractor we ran an inverted line. Along with that we carried a 1 through the full adder instead of leaving it as 0.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
- When your overflow it's fine, but when your overflow is 1, it will effect the set of the set of bits you needed output. 

### 3 - What is the edge case and problem with Two’s Complement number representation?
- You end up with a range from -128 to +127, so there's an offset between a representation of bits and its negated couterpart. 

