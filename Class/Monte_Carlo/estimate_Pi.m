function prob = estimate_Pi(N)

count_hit = 0;

for i = 1:N
    throw = throw_Dart();
    if throw == 1
        count_hit = count_hit + 1;
    end
end

prob = (4*count_hit)/N;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function val = throw_Dart()

hit = 0;

throwx = rand()/2;
throwy = rand/2;

if ((throwx)^2 + (throwy)^2 <= 0.25)
    hit = 1;
end

val = hit;