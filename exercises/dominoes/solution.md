Since the Domino list is meant to form a circle, it doesn't matter
which one you start with.
So, I will start with the first one.

Need to 
1) Construct the graph of all possible states
2) Traverse the graph to see if a chain is possible

Perhaps these can be refactored into one step in the future,
but no sense starting there now.

Say we have n dominoes, D1, D2, ...Dn, n>1
Each Domino can also be reversed to R1, R2, ... Rn
So I have to use each domino (or the reversed domino) exactly once 
to build the chain.
When the Domino at index n is used, need to also make sure Rn is also removed from the list of dominoes remaining. 
