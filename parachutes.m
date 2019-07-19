A = [70 1 0; 60 1 1; 40 0 -1];
b = [636; 518; 307];
x = A\b;
h=sprintf('Accelaration h = %g m/s^2',x(1)); 
disp(h) 
T=sprintf('Force T  = %g N',x(2)); 
disp(T) 
R=sprintf('Force R  = %g N',x(3)); 
disp(R) 
