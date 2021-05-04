function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method


if nargin < 3 || nargin > 6
    error('Youre dumbo')
end

if nargin <4
    es=0.0001
    maxit = 200
end
iter = 0
root = (xl+xu)/2
ea = 100

while ea>0.0001
    pastroot = root
    fl= func(xl)
    fu = func(xu)
root = xu-((fu*(xl-xu))/(fl-fu))

ea = abs((root-pastroot)/root)*100


if func(pastroot)*func(root) < 0
    xl = root
else
    xu = root
end
fx = func(root)
iter = iter + 1
end 
    