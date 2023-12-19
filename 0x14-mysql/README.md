<--  MySQL  -->
When working with webservers and there are records that are stored, it is very
important that there be backup or redundancies to ensure that data is not completerly lost in the event of natural disaster or data corruption.
Thus there is need for replication of data stored in a database. Choosing the
scheem(how frequently and for how long) will depend on the RTO (Replication Time
Objective ) and RPO(Replication Point Objectives) of a client
How long will backing-up take and how much data-loss can a client take are some of the questions that come up when choosing how to replicate a database

In this project a slave master scheme is to be used
