% Tests rec_Dist function

function dist_Test()

N_vec = [1:1:100 100:5:200 200:10:500 500:100:10000];

for i = 1:length(N_vec)
    
    test_Vec(i) = rec_Dist(N_vec(i));
    
end

plot(N_vec, test_Vec, 'r*');
xlabel = ('N');
ylabel = ('Distance');
set(gca, 'Fontsize', 14);