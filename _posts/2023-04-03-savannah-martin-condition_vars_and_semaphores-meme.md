---
title: Producer Comes Alive
author: savannah
image: Producer.png
chapter: 30 
---
In chapter 30, on page 12, it explains that in the code, producer threads wait on the condition empty, and signals fill. Conversely, consumer threads wait on fill and signal empty. By doing so, the second problem above is avoided by design: a consumer can never accidentally wake a consumer, and a producer can never accidentally wake a producer.
