//atividade 1
//definindo a funcao
x = [0:0.2:2]
//inicia o y
y = x
//definindo z
z = x.^2*ones(y') + y'.^2*ones(x)
//exibe o grafico
plot3d(x, y,z)

