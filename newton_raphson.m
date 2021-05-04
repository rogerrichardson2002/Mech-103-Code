x=1
f@x=-2+6*x-4*x^2+0.5*x^3
for i=1:10
    x=x-f(1)/diff(f(1))
    f=diff(f)
end