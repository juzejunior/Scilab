cont = 0
function ativ()
x=[-2:0.2:2]'
y=x
z=f(x,y)
plot3d(x,y,z)

xo=2;yo=-2;zo=f(xo,yo)

while norm(g(xo,yo))>0.001
 grad=g(xo,yo)
 xn=xo-grad(1)/100; yn=yo-grad(2)/100
 zn=f(xn,yn)
 cont=cont+1; disp(cont,' cont ')
 xo=xn; yo=yn; zo=zn
end
disp(round(xo), ' x');disp(round(yo), ' y')

hess=h(xo,yo);disp(hess,' hessiano')
xgrid(5, 1, 7)
endfunction

function z=f(x,y)
    z=3*x.^2*ones(y') + 2*x*y' + y'.^2*ones(x) + x.*10*ones(y') + y'.*2*ones(x) + 1
endfunction

function gr=g(x,y)
    gr=[6*x+2*y+10;
         2*x+2*y+2]
endfunction

function hh=h(x,y)
    h=[6 2;
       2 2]
    hh=det(h)
endfunction
