---
title:  Gru Inital Value
author: gavin
image: Gru-Intro-Meme.jpg
chapter: 2
---
Gru doesnt get the same final value as the inital value. A
key part of the program, where the shared counter is incremented, takes three instructions: one to load the value of the counter from memory into a register, one to increment it, and one to store it back into memory. Because these three instructions do not execute atomically (all at
once), strange things can happen and Gru is not getting his correct value a majority of the time.