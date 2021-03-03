nb = 512;
nbm = 12;
mod = 1<<nbm;
mask = 2*(4^(nbm/2)-1)/(4-1);
n = read("input.txt");
chiffre(m) = [m^2%n,kronecker(m,n),m%2];
dechiffre(c) = read("dec")(c);
m = random(1<<500)<<nb+mask;
if(dechiffre(chiffre(m)) != m,error("problème d'énoncé à signaler"));
