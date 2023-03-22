---
title:  compare and swap/exchange
author: Shelly
image: compare_and_swap_concept.jpg
chapter: 28 
---
Use compare-and-swap (aka compare-and-exchange) to test whether the value at the address specified is equal to the expectevalue. If so, update the memory location pointed to it with the new value. If it is not equal then do nothing. In whichever case it is, return the original value at that memory location, allowing the code calling compare-and-swap to know whether it succeeded or not.