eats(fred, tomatoes ).
eats(Whom, What).
/* Yes. Whom = fred, What = tomatoes */

eats(fred, Food). 
eats(Person, jim).
/* No. More than likely, jim would not be put in the database as food. */

cd(29, beatles, sgt_pepper).
cd(A,B,help).
/* There is a possibility help is a song. */
/* if that were the case, A = "track_Number" and B = "artist_Name" */

f(X, a).
f(a, X).
/* Probably not, unless the databases explicitly have those pairs. */

likes(jane, X).
likes(X, jim).
/* There is a possibility that X does like jim. */
/* Since the database is not clearly defined, we should not assume */
/* there is a specific arrangement of variables, ie girls left, boys right. */

f(X, Y).
f(P, P).
/* Yes but I cannot identify the variables. */

f(foo, L).
f(A1, A1).
/* No. I believe the problem occurs when assigning A1 the first argument */
/* (foo?) and then the query puts A1 into the second argument.  */
/* In other words, enters null first, enters 'foo' next */
/* However, if there is such an f(x, x) then f(A1, A1) returns true. */