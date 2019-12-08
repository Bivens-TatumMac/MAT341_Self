% Write a script that takes in the size of the matrix, and returns the 
% operation count, OpCount, necessary to row reducea matrix, A?R^N×N, to 
% reduced-row echelonform.

function OpCount = go_Go_Gaussian_Elimination(N)

A = rand(N,N);
OpCount = 0;

for i = 1:N
        
    A(i,:) = A(i,:)/A(i,i);
    OpCount = OpCount + 1;
    
    for j = i+1:N
        
        A(j,:)= A(j,:) - A(i,:)*A(j,i);
        OpCount = OpCount + 2;
        
    end
end
end