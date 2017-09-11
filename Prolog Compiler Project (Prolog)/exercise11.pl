/* [a,d,z,c] and [H|T]. */
/* Succeeds. H=a T=[d,z,c] */

/* [apple, pear, grape] and [A,pear|Rest] */
/* Succeeds. A=apple and Rest=[grape] */

/* [a|Rest] and [a,b,c] */
/* Succeeds. Rest=[b,c] */

/* [a,[]] and [A,B|Rest] /*
/* Succeeds. A=a, B=[] and Rest=[] */

/* [One] and [two|[]] */
/* Succeeds. One=two. */

/* [one] and [Two] */
/* Succeeds. Two=one */

/* [a,b,X] and [a,b,c,d] */
/* Fails. Sizes are uneven. Also, X is probably have troubling being both c and d.  */