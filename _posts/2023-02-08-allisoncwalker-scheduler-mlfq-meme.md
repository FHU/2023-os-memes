---
title: Starvation
author: Alli
image: Starvation.png
chapter: 8
---
Chapter 8 talks about how the simple version of the Multi-Level Feedback Queue, MLFQ, applies rule 4b. The intent of rule 4b is to enable an interactive job with a lot of I/O not to be penalized and allow it to keep its priority level. There are serious flaws with this, if there are too many interactive jobs in the system, they will combine and consume all the CPU, leaving the long-running jobs with no CPU; this is called starvation. (p. 6)