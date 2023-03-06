---
title: Prioritizing Nutrients
author: Jaydon
image: job-starvation.jpg
chapter: 8
---
Without a priority boost implemented in a scheduler, long-running jobs could be ignored for shorter, less-intensive CPU jobs, and thus the long-running job never receives CPU time. In other words, the long-running job is starved.
Priority boost (Rule 5) fixes this problem. Priority boost will periodically allow all jobs in the system to be jumped back to the top priority level of the queue, thus giving each job (including long-running jobs that will once again be deprecated in priority by rule 1) a chance to share some CPU time even briefly (Pg. 6-7).