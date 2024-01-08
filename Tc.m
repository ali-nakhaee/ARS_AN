function X = Tc(tr,ts)

a=[-2.00755 0.16976 -3.133362*10^-3 1.97668*10^-5];
b=[124.937 -7.71649 0.152286 -7.9509*10^-4];


syms x
Ts(x)= b(1)+ b(2)*x + b(3)*x^2 + b(4)*x^3 + tr*(a(1) + a(2)*x + a(3)*x^2 +a(4)*x^3);
x=double(solve(Ts-ts,x));


for i=1:3;
    if 43<x(i) &&x(i)<70
           X = real(x(i));
    end
end
end

