#Datensatz1
Daten1=load ("BL_Slow.txt");
a=Daten1(:,1);
b=Daten1(:,2);
#Datensatz2
Daten2=load ("BL_Fast.txt");
c=Daten2(:,1);
d=Daten2(:,2);
#Datensatz3
Daten3=load ("BL_105.txt");
e=Daten3(:,1);
f=Daten3(:,2);
#Differenzieren
#y2stich1 = diff(diff(y));
#index1=find(diff(sign(y2stich1))~=0);
plot(a,b,";BL Slow;",c,d,";BL Fast;",e,f,";BL 105;" );
grid on;
hold on;
xlabel ("Temperatur in °C"); ylabel ("Normalisiertes Gewicht in %");title ("Blaue Kuehlfluessigkeit");
#plot(x(index1 +1),y(index1 +1),"xk");
#plot(xi(index2 +1),yi(index2 +1),"xk");
hold off;
#AuswertungX=x(index1 +1);
#AuswertungY=y(index1 +1);
#Auswertung=[AuswertungX AuswertungY]
#save -ascii "Auswertung_BL.txt" Auswertung
#csvwrite ("Auswertung_BL.cvs", Auswertung)
print -djpg "Auswertung_BL.jpg";
print -dtex "Auswertung_BL.tex";
#print -dtikz "Auswertung_BL-tikz.tex";
pause();
