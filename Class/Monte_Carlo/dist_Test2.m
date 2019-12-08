% Tests rec_Dist function

function dist_Test2()

N_vec = [1:1:100 100:5:200 200:10:500 500:100:10000];
Lx_Vec = [0:0.1:0.99 1:0.05:2 2:0.1:5 5:1:100];


for i = 1:length(Lx_Vec)
    
    test_Vec(i) = rec_Dist2(Lx_Vec(i), N_vec(i));
      
end

plot(Lx_Vec, test_Vec, 'r*');
xlabel = ('Lx');
ylabel = ('Expected Distance');
set(gca, 'Fontsize', 14);