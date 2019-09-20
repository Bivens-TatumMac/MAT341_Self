function time_Vec = plotNestedTimes()

N = [10 100 125 150 175 200 225 250]
index = 1;
tic
k = 1;

for j = 1:8
    for i1 = 1:N(j)
        for i2 = 1:N
            for i3 = 1:N
                for i4 = 1:N                    
                    k = k+1;
                end
            end
        end
    end
    time_Vec(index) = toc;
    index = index + 1;
end

loglog(N,time_Vec,'m','Linewidth',3)
xlabel('N')
ylabel('Time')