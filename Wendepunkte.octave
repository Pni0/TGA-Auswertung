Daten=load ("Testdaten.txt");
x=Daten(:,1);
y=Daten(:,2);
y2stich1 = diff(diff(y));
index1=find(diff(sign(y2stich1))~=0);
# Interpolation
#xi=linspace(0,4*pi,100000);
#yi=interp1(x,y,xi,'spline');
#y2stich2 = diff(diff(yi));
#index2=find(diff(sign(y2stich2))~=0);
plot(x,y);
grid on;
hold on;
xlabel ("Temperatur in grad C"); ylabel ("Normalisiertes Gewicht in %");title ("TGA - 25.04.13");
plot(x(index1 +1),y(index1 +1),"xk");
#plot(xi(index2 +1),yi(index2 +1),"xk");
hold off;
AuswertungX=x(index1 +1);
AuswertungY=y(index1 +1);
Auswertung=[AuswertungX AuswertungY]
save -ascii "Auswertung.txt" Auswertung
csvwrite ("Auswertung.cvs", Auswertung)
print -djpg "Auswertung.jpg";
print -dtex "Auswertung.tex";
print -dtikz "Auswertung-tikz.tex";
pause();
