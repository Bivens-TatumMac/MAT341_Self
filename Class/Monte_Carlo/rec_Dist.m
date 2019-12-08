% Find average distance between two random points in a 1x1 rectangle.

function exp_Dist = rec_Dist(N)

for i = 1:N
    
    x_coor1 = rand();
    y_coor1 = rand();
    x_coor2 = rand();
    y_coor2 = rand();
    
    dist(i) = sqrt((y_coor2 - y_coor1)^2 + (x_coor2 - x_coor1)^2);
    
end

exp_Dist = mean(dist);