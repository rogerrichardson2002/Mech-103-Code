function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated





[a,b]=size(x);
[c,d]=size(y);



if b ~= d 
    error('need to be same size')
end

I=0;
h=x(2)-x(1);
segments=b-1;
integrate = segments/2;

if x(end)-x(end-1)~=x(end-1)-x(end-2)
    error('spacing needs to be equal')
end

if mod(b,2)==0
    
    warning('trapezoidal rule applied for last segment')

    I=(y(end-1)+y(end))/2;
    
        integrate = (segments-1)/2;

    
end



for j= 1:integrate
    I = I+((h/3)*(y(1,2*j-1)+4*y(1,2*j)+(y(1,2*j+1))))
end


end