% Finds prob of a triangle within a circle of radius 2 containing the point (0,0).

% Had a lot of trouble with this one, but the others should be fine.


function prob = estimate_Triangle_Center_Circle_Probability(N)

origin = [0, 0];
radius = 2;
sum = 0;

    for i = 1:N  
        
        xcoor1(i) = rand(-1,1);
        ycoor1(i) = rand(-1,1);
        xcoor2(i) = rand(-1,1);
        ycoor2(i) = rand(-1,1);
        xcoor3(i) = rand(-1,1);
        ycoor3(i) = rand(-1,1);
        
        point1(i) = [xcoor1(i), ycoor1(i)];
        
        point2(i) = [xcoor2(i), ycoor2(i)];        
        
        point3(i) = [xcoor3(i), ycoor3(i)];
        
        if origin == inpolygon(point1(i), point2(i), point3(i))
            
            sum = sum + 1;
            
        end
    end
    
prob = sum / N;
            
end