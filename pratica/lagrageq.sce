x=[-2:0.2:2]';y=x;
// z para cada ponto do plano cartesiano
z = x.^2*ones(y') + y'.^2*ones(x)
plot3d(x,y,z)
gr=[2*x;
    2*y]

// restrição
rest = x + y - 1
rgr=[1;
     1]

// LaGrange 
//LX = gr(1) +l*rgr(1) = 0
//LY = gr(2) +l*rgr(2) = 0
//-l-1 = 0 ---> l = -1
l = -1
xn = -l/2
yn = -l/2

disp(xo, ' x')
disp(yo, ' y')
