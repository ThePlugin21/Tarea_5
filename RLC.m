function dx = RLC(t, x)
    %% PARAMETOS
    R = 100;
    L = 6e-03;
    C = 1e-7;
    Vin = 3.8;
    
    %% DINAMICA DEL SISTEMA
    dx = zeros(2, 1);
    
    %% MATRICES 
    A = [0 1; -(1/(L*C)) -(1/(L*C))*R*C];
    B = [0; 1/(L*C)];
    
    %% RLC
    dx(1:2) = A*[x(1); x(2)]+B*Vin;

end