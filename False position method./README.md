Overview: The false position method is a root finding method thst requires some trial and error. The Matlab function in this folder executes the false position method based on
a set of inputs.

Inputs: func=function, xl=lower bound, xu=upper bound, es=true relative error, maxit=maximum number of iterations <br />
Outputs: root=x-value of the root, fx=function evaluated at the root guess, ea=approximate relative error, iter=number of iterations <br />

Limitations: Computationally inefficient and requires two initial guesses.
