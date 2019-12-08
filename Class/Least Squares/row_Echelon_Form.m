% reduces a matrix to row echelon form.

function A = row_Echelon_Form(N)

A = rand(N,N)
S = 2;

for r = 1:N
    A(1,r) = A(1,r)/A(1,1);
end

    for k = 1:N
    
        for i = S:N
        
            scaleA = A(i,k);
        
            for j = 1:N       
            
                A(i,j) = A(i,j) - scaleA*A(i,j);
        
            end                         
        end
        
        S = S + 1;
        
    end
end