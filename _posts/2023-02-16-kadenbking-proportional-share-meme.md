---
title:  Stride New Process
author: kadenbking
image: stride-scheduling.jpeg
chapter: 9
---
While stride scheduling is deterministically accurate in sharing the scheduler among processes, it does encounter issues when a new process enters the cycle. If the new processes and the pass counter is 0, it will monoplize the CPU until it catches up with the other running processes. Stride must decide how to handle these new processes(p.6, page 7)