function exp_Dist2 = rec_Dist2(Lx, N)

for i = 1:N
    
    x_coor1 = Lx*rand();
    y_coor1 = rand();
    x_coor2 = Lx*rand();
    y_coor2 = rand();
    
    dist(i) = sqrt((y_coor2 - y_coor1)^2 + (x_coor2 - x_coor1)^2);
    
end

exp_Dist2 = mean(dist);