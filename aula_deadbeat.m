r = poly([0.9 0.8 0.35]);

sys = tf([0.05 0.05*0.5], r, 0.01);


sysmf = feedback(sys, 1);

step(sysmf);

dead = (1/sys) * (tf([1], [1 0 0], 0.01)/(1 - tf([1], [1 0 0], 0.01)));

sysn = sys * dead;

sysnmf = feedback(sysn, 1)

hold on

step(sysmf)

step(sysnmf)