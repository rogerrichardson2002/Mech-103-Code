Overview: The Sipmson's 1/3rd algorithm is an often computationally efficient and precise numerical integration method. The MATLAB function in this folder uses Simpson's 1/3rd
algorithm for an odd number of inputs. If there are an even number of inputs, the function uses the trapezoidal rule for the last segment.

Inputs: x=vector containing the independent variables,  y=vector containing the dependent variables <br />
Outputs: I=Integral of the inputs

Limitations: Sometimes computationally inefficient and, depending on the function, not always very accurate, even after a lot of iterations.
