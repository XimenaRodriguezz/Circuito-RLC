function dx=RLC(t,x)
%-----------------Definicion d los parametros--------------------%
R=100;
L=6e-3;
C=0.1e-6;


Amplitud=1;
frecuencia = 1/0.02; % Frecuencia (Hz)
ciclo_de_trabajo = 50; % Ciclo de trabajo (%)
Vin = Amplitud*(square(2*pi*frecuencia*t,ciclo_de_trabajo));
Vin = min(max(Vin, 0), 1);
%-----------------------------------------------------------------%
dx=zeros(2,1);

%-------------definicion de la dinamica del sistema---------------%
dx(1)=x(2);
dx(2)=(1/(L*C))*(-C*R*x(2)-x(1)+Vin);