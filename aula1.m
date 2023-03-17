tau = 100;
km = 30;

sysposma = tf(1, [tau km 0]);
sysvelma = tf(1, [tau km]);

[y1, t1] = impulse(sysposma, 100);

[y2, t2] = impulse(sysvelma, 100);



plot(t1, y1);


plot(t2, y2);


sysposmf = feedback(sysposma, 1);


sysvelmf = feedback(sysvelma, 1);


[y1, t1] = impulse(sysposma, 100);
[y2, t2] = impulse(sysposmf, 100);

[y3, t3] = impulse(sysvelma, 100);
[y4, t4] = impulse(sysvelmf, 100);

[y5, t5] = impulse(sysposma, 100);
[y6, t6] = impulse(sysposmf, 100);

[y7, t7] = impulse(sysvelma, 100);
[y8, t8] = impulse(sysvelmf, 100);


figure

plot(t1, y1)
hold on
plot(t2, y2)
title('Resposta Impulsiva para o Sistema de Posicao')
legend('malha aberta', 'malha fechada')


t = 0:0.1:200;

u = sin(t);

y9 = lsim(sysposma, u, t);



