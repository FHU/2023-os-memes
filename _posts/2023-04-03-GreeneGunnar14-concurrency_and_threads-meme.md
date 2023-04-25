---
title: Gru Forgets The Atomicity
author: Gunnar
image: Grutomicity.jpg
chapter: 26
---
The joke is that gru was trying to implement multithreading without considering atomicity. Because of this, Gru's code did not execute in the order he expected it to, meaning step 3 occurred before step 2.