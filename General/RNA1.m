%function RNA1()

    clc
    close all
    clear all

    load('Xmel.mat')

    Nmuestas=size(X,1);
    NEnt=size(Xe,1);
    NPru=size(Xp,1);

    wN1C1=(rand(25,1))';
    wN2C1=(rand(25,1))';
    wN3C1=(rand(25,1))';
    wN4C1=(rand(25,1))';
    wN5C1=(rand(25,1))';
    wN6C1=(rand(25,1))';
    wN7C1=(rand(25,1))';
    wN8C1=(rand(25,1))';
    wN9C1=(rand(25,1))';
    wN10C1=(rand(25,1))';
    wN11C1=(rand(25,1))';
    wN12C1=(rand(25,1))';
    wN13C1=(rand(25,1))';
    wN14C1=(rand(25,1))';
    wN15C1=(rand(25,1))';
    wN16C1=(rand(25,1))';
    wN17C1=(rand(25,1))';
    wN18C1=(rand(25,1))';
    wN19C1=(rand(25,1))';
    wN20C1=(rand(25,1))';
    wN21C1=(rand(25,1))';
    wN22C1=(rand(25,1))';
    wN23C1=(rand(25,1))';
    wN24C1=(rand(25,1))';
    wN25C1=(rand(25,1))';

    wN1C2=(rand(25,1))';
    wN2C2=(rand(25,1))';
    wN3C2=(rand(25,1))';
    wN4C2=(rand(25,1))';
    wN5C2=(rand(25,1))';
    wN6C2=(rand(25,1))';
    wN7C2=(rand(25,1))';
    wN8C2=(rand(25,1))';
    wN9C2=(rand(25,1))';
    wN10C2=(rand(25,1))';
    wN11C2=(rand(25,1))';
    wN12C2=(rand(25,1))';
    wN13C2=(rand(25,1))';
    wN14C2=(rand(25,1))';
    wN15C2=(rand(25,1))';
    wN16C2=(rand(25,1))';
    wN17C2=(rand(25,1))';
    wN18C2=(rand(25,1))';
    wN19C2=(rand(25,1))';
    wN20C2=(rand(25,1))';

    wN1C3=(rand(20,1))';
    wN2C3=(rand(20,1))';
    wN3C3=(rand(20,1))';
    wN4C3=(rand(20,1))';
    wN5C3=(rand(20,1))';
    wN6C3=(rand(20,1))';
    wN7C3=(rand(20,1))';
    wN8C3=(rand(20,1))';
    wN9C3=(rand(20,1))';
    wN10C3=(rand(20,1))';
    wN11C3=(rand(20,1))';
    wN12C3=(rand(20,1))';
    wN13C3=(rand(20,1))';
    wN14C3=(rand(20,1))';
    wN15C3=(rand(20,1))';

    wN1C4=(rand(15,1))';
    wN2C4=(rand(15,1))';
    wN3C4=(rand(15,1))';
    wN4C4=(rand(15,1))';
    wN5C4=(rand(15,1))';
    wN6C4=(rand(15,1))';
    wN7C4=(rand(15,1))';
    wN8C4=(rand(15,1))';
    wN9C4=(rand(15,1))';
    wN10C4=(rand(15,1))';

    wN1C5=(rand(10,1))';
    wN2C5=(rand(10,1))';
    wN3C5=(rand(10,1))';
    wN4C5=(rand(10,1))';
    wN5C5=(rand(10,1))';
    wN6C5=(rand(10,1))';
    wN7C5=(rand(10,1))';
    
    wN1C6=(rand(7,1))';

    eta=0.1;
    ErrorEnt=1;
    ErrorPru=1;
    it=0;

    %while(ErrorEnt>0.05 || ErrorPru>0.05)
    for k=1:30000
        it=it+1;
        disp(strcat('Iteración = ',num2str(it)));

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        %%%%%%%%%%%%%%%Inicio Entrenamiento%%%%%%%%%%%%%%%%%%%%
        
        i=randi([1,NEnt],1,1);
        Xi=Xe(i,:);
        Yi=Ye(i);

        N1C1=dot(wN1C1,Xi');
        N2C1=dot(wN2C1,Xi');
        N3C1=dot(wN3C1,Xi');
        N4C1=dot(wN4C1,Xi');
        N5C1=dot(wN5C1,Xi');
        N6C1=dot(wN6C1,Xi');
        N7C1=dot(wN7C1,Xi');
        N8C1=dot(wN8C1,Xi');
        N9C1=dot(wN8C1,Xi');
        N10C1=dot(wN10C1,Xi');
        N11C1=dot(wN11C1,Xi');
        N12C1=dot(wN12C1,Xi');
        N13C1=dot(wN13C1,Xi');
        N14C1=dot(wN14C1,Xi');
        N15C1=dot(wN15C1,Xi');
        N16C1=dot(wN16C1,Xi');
        N17C1=dot(wN17C1,Xi');
        N18C1=dot(wN18C1,Xi');
        N19C1=dot(wN19C1,Xi');
        N20C1=dot(wN20C1,Xi');
        N21C1=dot(wN21C1,Xi');
        N22C1=dot(wN22C1,Xi');
        N23C1=dot(wN23C1,Xi');
        N24C1=dot(wN24C1,Xi');
        N25C1=dot(wN25C1,Xi');
        
        N1C1=sigmf(N1C1,[5 1]);
        N2C1=sigmf(N2C1,[5 1]);
        N3C1=sigmf(N3C1,[5 1]);
        N4C1=sigmf(N4C1,[5 1]);
        N5C1=sigmf(N5C1,[5 1]);
        N6C1=sigmf(N6C1,[5 1]);
        N7C1=sigmf(N7C1,[5 1]);
        N8C1=sigmf(N8C1,[5 1]);
        N9C1=sigmf(N9C1,[5 1]);
        N10C1=sigmf(N10C1,[5 1]);
        N11C1=sigmf(N11C1,[5 1]);
        N12C1=sigmf(N12C1,[5 1]);
        N13C1=sigmf(N13C1,[5 1]);
        N14C1=sigmf(N14C1,[5 1]);
        N15C1=sigmf(N15C1,[5 1]);
        N16C1=sigmf(N16C1,[5 1]);
        N17C1=sigmf(N17C1,[5 1]);
        N18C1=sigmf(N18C1,[5 1]);
        N19C1=sigmf(N19C1,[5 1]);
        N20C1=sigmf(N20C1,[5 1]);
        N21C1=sigmf(N21C1,[5 1]);
        N22C1=sigmf(N22C1,[5 1]);
        N23C1=sigmf(N23C1,[5 1]);
        N24C1=sigmf(N24C1,[5 1]);
        N25C1=sigmf(N25C1,[5 1]);
        
        Xi2=[N1C1 N2C1 N3C1 N4C1 N5C1 N6C1 N7C1 N8C1 N9C1 N10C1 N11C1 N12C1 N13C1 N14C1 N15C1 N16C1 N17C1 N18C1 N19C1 N20C1 N21C1 N22C1 N23C1 N24C1 N25C1];
        
        N1C2=dot(wN1C2,Xi2);
        N2C2=dot(wN2C2,Xi2);
        N3C2=dot(wN3C2,Xi2);
        N4C2=dot(wN4C2,Xi2);
        N5C2=dot(wN5C2,Xi2);
        N6C2=dot(wN6C2,Xi2);
        N7C2=dot(wN7C2,Xi2);
        N8C2=dot(wN8C2,Xi2);
        N9C2=dot(wN9C2,Xi2);
        N10C2=dot(wN10C2,Xi2);
        N11C2=dot(wN11C2,Xi2);
        N12C2=dot(wN12C2,Xi2);
        N13C2=dot(wN13C2,Xi2);
        N14C2=dot(wN14C2,Xi2);
        N15C2=dot(wN15C2,Xi2);
        N16C2=dot(wN16C2,Xi2);
        N17C2=dot(wN17C2,Xi2);
        N18C2=dot(wN18C2,Xi2);
        N19C2=dot(wN19C2,Xi2);
        N20C2=dot(wN20C2,Xi2);
        
        N1C2=sigmf(N1C2,[5 1]);
        N2C2=sigmf(N2C2,[5 1]);
        N3C2=sigmf(N3C2,[5 1]);
        N4C2=sigmf(N4C2,[5 1]);
        N5C2=sigmf(N5C2,[5 1]);
        N6C2=sigmf(N6C2,[5 1]);
        N7C2=sigmf(N7C2,[5 1]);
        N8C2=sigmf(N8C2,[5 1]);
        N9C2=sigmf(N9C2,[5 1]);
        N10C2=sigmf(N10C2,[5 1]);
        N11C2=sigmf(N11C2,[5 1]);
        N12C2=sigmf(N12C2,[5 1]);
        N13C2=sigmf(N13C2,[5 1]);
        N14C2=sigmf(N14C2,[5 1]);
        N15C2=sigmf(N15C2,[5 1]);
        N16C2=sigmf(N16C2,[5 1]);
        N17C2=sigmf(N17C2,[5 1]);
        N18C2=sigmf(N18C2,[5 1]);
        N19C2=sigmf(N19C2,[5 1]);
        N20C2=sigmf(N20C2,[5 1]);
        
        Xi3=[N1C2 N2C2 N3C2 N4C2 N5C2 N6C2 N7C2 N8C2 N9C2 N10C2 N11C2 N12C2 N13C2 N14C2 N15C2 N16C2 N17C2 N18C2 N19C2 N20C2];
        
        N1C3=dot(wN1C3,Xi3);
        N2C3=dot(wN2C3,Xi3);
        N3C3=dot(wN3C3,Xi3);
        N4C3=dot(wN4C3,Xi3);
        N5C3=dot(wN5C3,Xi3);
        N6C3=dot(wN6C3,Xi3);
        N7C3=dot(wN7C3,Xi3);
        N8C3=dot(wN8C3,Xi3);
        N9C3=dot(wN9C3,Xi3);
        N10C3=dot(wN10C3,Xi3);
        N11C3=dot(wN11C3,Xi3);
        N12C3=dot(wN12C3,Xi3);
        N13C3=dot(wN13C3,Xi3);
        N14C3=dot(wN14C3,Xi3);
        N15C3=dot(wN15C3,Xi3);
        
        N1C3=sigmf(N1C3,[5 1]);
        N2C3=sigmf(N2C3,[5 1]);
        N3C3=sigmf(N3C3,[5 1]);
        N4C3=sigmf(N4C3,[5 1]);
        N5C3=sigmf(N5C3,[5 1]);
        N6C3=sigmf(N6C3,[5 1]);
        N7C3=sigmf(N7C3,[5 1]);
        N8C3=sigmf(N8C3,[5 1]);
        N9C3=sigmf(N9C3,[5 1]);
        N10C3=sigmf(N10C3,[5 1]);
        N11C3=sigmf(N11C3,[5 1]);
        N12C3=sigmf(N12C3,[5 1]);
        N13C3=sigmf(N13C3,[5 1]);
        N14C3=sigmf(N14C3,[5 1]);
        N15C3=sigmf(N15C3,[5 1]);
        
        Xi4=[N1C3 N2C3 N3C3 N4C3 N5C3 N6C3 N7C3 N8C3 N9C3 N10C3 N11C3 N12C3 N13C3 N14C3 N15C3];
        
        N1C4=dot(wN1C4,Xi4);
        N2C4=dot(wN2C4,Xi4);
        N3C4=dot(wN3C4,Xi4);
        N4C4=dot(wN4C4,Xi4);
        N5C4=dot(wN5C4,Xi4);
        N6C4=dot(wN6C4,Xi4);
        N7C4=dot(wN7C4,Xi4);
        N8C4=dot(wN8C4,Xi4);
        N9C4=dot(wN9C4,Xi4);
        N10C4=dot(wN10C4,Xi4);
        
        N1C4=sigmf(N1C4,[5 1]);
        N2C4=sigmf(N2C4,[5 1]);
        N3C4=sigmf(N3C4,[5 1]);
        N4C4=sigmf(N4C4,[5 1]);
        N5C4=sigmf(N5C4,[5 1]);
        N6C4=sigmf(N6C4,[5 1]);
        N7C4=sigmf(N7C4,[5 1]);
        N8C4=sigmf(N8C4,[5 1]);
        N9C4=sigmf(N9C4,[5 1]);
        N10C4=sigmf(N10C4,[5 1]);
        
        Xi5=[N1C4 N2C4 N3C4 N4C4 N5C4 N6C4 N7C4 N8C4 N9C4 N10C4];
        
        N1C5=dot(wN1C5,Xi5);
        N2C5=dot(wN2C5,Xi5);
        N3C5=dot(wN3C5,Xi5);
        N4C5=dot(wN4C5,Xi5);
        N5C5=dot(wN5C5,Xi5);
        N6C5=dot(wN6C5,Xi5);
        N7C5=dot(wN7C5,Xi5);
        
        N1C5=sigmf(N1C5,[5 1]);
        N2C5=sigmf(N2C5,[5 1]);
        N3C5=sigmf(N3C5,[5 1]);
        N4C5=sigmf(N4C5,[5 1]);
        N5C5=sigmf(N5C5,[5 1]);
        N6C5=sigmf(N6C5,[5 1]);
        N7C5=sigmf(N7C5,[5 1]);
        
        Xi6=[N1C5 N2C5 N3C5 N4C5 N5C5 N6C5 N7C5];
        
        N1C6=dot(wN1C6,Xi6);
        
        d1=N1C6-Yi;
        
        d2=(Xi6)*(1-(Xi6'))*(wN1C6*d1);
        suma=((wN1C5*d2(1))+(wN2C5*d2(2))+(wN3C5*d2(3))+(wN4C5*d2(4))+(wN5C5*d2(5))+(wN6C5*d2(6))+(wN7C5*d2(7)));
        d3=(Xi5)*(1-(Xi5'))*suma;
        suma=((wN1C4*d3(1))+(wN2C4*d3(2))+(wN3C4*d3(3))+(wN4C4*d3(4))+(wN5C4*d3(5))+(wN6C4*d3(6))+(wN7C4*d3(7))+(wN8C4*d3(8))+(wN9C4*d3(9))+(wN10C4*d3(10)));
        d4=(Xi4)*(1-(Xi4'))*suma;
        suma=((wN1C3*d4(1))+(wN2C3*d4(2))+(wN3C3*d4(3))+(wN4C3*d4(4))+(wN5C3*d4(5))+(wN6C3*d4(6))+(wN7C3*d4(7))+(wN8C3*d4(8))+(wN9C3*d4(9))+(wN10C3*d4(10))+(wN11C3*d4(11))+...
            (wN12C3*d4(12))+(wN13C3*d4(13))+(wN14C3*d4(14))+(wN15C3*d4(15)));
        d5=(Xi3)*(1-(Xi3'))*suma;
        suma=((wN1C2*d5(1))+(wN2C2*d5(2))+(wN3C2*d5(3))+(wN4C2*d5(4))+(wN5C2*d5(5))+(wN6C2*d5(6))+(wN7C2*d5(7))+(wN8C2*d5(8))+(wN9C2*d5(9))+(wN10C2*d5(10))+(wN11C2*d5(11))+...
            (wN12C2*d5(12))+(wN13C2*d5(13))+(wN14C2*d5(14))+(wN15C2*d5(15))+(wN16C2*d5(16))+(wN17C2*d5(17))+(wN18C2*d5(18))+(wN19C2*d5(19))+(wN20C2*d5(20)));
        d6=(Xi2)*(1-(Xi2'))*suma;

        wN1C6=wN1C6 - eta*d1*Xi6;
        
        wN1C5=wN1C5- eta*d2(1)*Xi5;
        wN2C5=wN2C5- eta*d2(2)*Xi5;
        wN3C5=wN3C5- eta*d2(3)*Xi5;
        wN4C5=wN4C5- eta*d2(4)*Xi5;
        wN5C5=wN5C5- eta*d2(5)*Xi5;
        wN6C5=wN6C5- eta*d2(6)*Xi5;
        wN7C5=wN7C5- eta*d2(7)*Xi5;
        
        wN1C4=wN1C4- eta*d3(1)*Xi4;
        wN2C4=wN2C4- eta*d3(2)*Xi4;
        wN3C4=wN3C4- eta*d3(3)*Xi4;
        wN4C4=wN4C4- eta*d3(4)*Xi4;
        wN5C4=wN5C4- eta*d3(5)*Xi4;
        wN6C4=wN6C4- eta*d3(6)*Xi4;
        wN7C4=wN7C4- eta*d3(7)*Xi4;
        wN8C4=wN8C4- eta*d3(8)*Xi4;
        wN9C4=wN9C4- eta*d3(9)*Xi4;
        wN10C4=wN10C4- eta*d3(10)*Xi4;
        
        wN1C3=wN1C3- eta*d4(1)*Xi3;
        wN2C3=wN2C3- eta*d4(2)*Xi3;
        wN3C3=wN3C3- eta*d4(3)*Xi3;
        wN4C3=wN4C3- eta*d4(4)*Xi3;
        wN5C3=wN5C3- eta*d4(5)*Xi3;
        wN6C3=wN6C3- eta*d4(6)*Xi3;
        wN7C3=wN7C3- eta*d4(7)*Xi3;
        wN8C3=wN8C3- eta*d4(8)*Xi3;
        wN9C3=wN9C3- eta*d4(9)*Xi3;
        wN10C3=wN10C3- eta*d4(10)*Xi3;
        wN11C3=wN11C3- eta*d4(11)*Xi3;
        wN12C3=wN12C3- eta*d4(12)*Xi3;
        wN13C3=wN13C3- eta*d4(13)*Xi3;
        wN14C3=wN14C3- eta*d4(14)*Xi3;
        wN15C3=wN15C3- eta*d4(15)*Xi3;
        
        wN1C2=wN1C2- eta*d5(1)*Xi2;
        wN2C2=wN2C2- eta*d5(2)*Xi2;
        wN3C2=wN3C2- eta*d5(3)*Xi2;
        wN4C2=wN4C2- eta*d5(4)*Xi2;
        wN5C2=wN5C2- eta*d5(5)*Xi2;
        wN6C2=wN6C2- eta*d5(6)*Xi2;
        wN7C2=wN7C2- eta*d5(7)*Xi2;
        wN8C2=wN8C2- eta*d5(8)*Xi2;
        wN9C2=wN9C2- eta*d5(9)*Xi2;
        wN10C2=wN10C2- eta*d5(10)*Xi2;
        wN11C2=wN11C2- eta*d5(11)*Xi2;
        wN12C2=wN12C2- eta*d5(12)*Xi2;
        wN13C2=wN13C2- eta*d5(13)*Xi2;
        wN14C2=wN14C2- eta*d5(14)*Xi2;
        wN15C2=wN15C2- eta*d5(15)*Xi2;
        wN16C2=wN16C2- eta*d5(16)*Xi2;
        wN17C2=wN17C2- eta*d5(17)*Xi2;
        wN18C2=wN18C2- eta*d5(18)*Xi2;
        wN19C2=wN19C2- eta*d5(19)*Xi2;
        wN20C2=wN20C2- eta*d5(20)*Xi2;
        
        wN1C1=wN1C1- eta*d6(1)*Xi;
        wN2C1=wN2C1- eta*d6(2)*Xi;
        wN3C1=wN3C1- eta*d6(3)*Xi;
        wN4C1=wN4C1- eta*d6(4)*Xi;
        wN5C1=wN5C1- eta*d6(5)*Xi;
        wN6C1=wN6C1- eta*d6(6)*Xi;
        wN7C1=wN7C1- eta*d6(7)*Xi;
        wN8C1=wN8C1- eta*d6(8)*Xi;
        wN9C1=wN9C1- eta*d6(9)*Xi;
        wN10C1=wN10C1- eta*d6(10)*Xi;
        wN11C1=wN11C1- eta*d6(11)*Xi;
        wN12C1=wN12C1- eta*d6(12)*Xi;
        wN13C1=wN13C1- eta*d6(13)*Xi;
        wN14C1=wN14C1- eta*d6(14)*Xi;
        wN15C1=wN15C1- eta*d6(15)*Xi;
        wN16C1=wN16C1- eta*d6(16)*Xi;
        wN17C1=wN17C1- eta*d6(17)*Xi;
        wN18C1=wN18C1- eta*d6(18)*Xi;
        wN19C1=wN19C1- eta*d6(19)*Xi;
        wN20C1=wN20C1- eta*d6(20)*Xi;
        wN21C1=wN21C1- eta*d6(21)*Xi;
        wN22C1=wN22C1- eta*d6(22)*Xi;
        wN23C1=wN23C1- eta*d6(23)*Xi;
        wN24C1=wN24C1- eta*d6(24)*Xi;
        wN25C1=wN25C1- eta*d6(25)*Xi;
        
        %%%%%%%%%%%%%%%%Fin Entrenamiento%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        %%%%%%%%%%%%%%%%Inicio Calculo Prueba%%%%%%%%%%%%%%%%%%%%%%%
        
        ContBuena=0;
        for i=1:NEnt
            Xi=Xe(i,:);
            Yi=Ye(i);
            N1C1=dot(wN1C1,Xi');
            N2C1=dot(wN2C1,Xi');
            N3C1=dot(wN3C1,Xi');
            N4C1=dot(wN4C1,Xi');
            N5C1=dot(wN5C1,Xi');
            N6C1=dot(wN6C1,Xi');
            N7C1=dot(wN7C1,Xi');
            N8C1=dot(wN8C1,Xi');
            N9C1=dot(wN8C1,Xi');
            N10C1=dot(wN10C1,Xi');
            N11C1=dot(wN11C1,Xi');
            N12C1=dot(wN12C1,Xi');
            N13C1=dot(wN13C1,Xi');
            N14C1=dot(wN14C1,Xi');
            N15C1=dot(wN15C1,Xi');
            N16C1=dot(wN16C1,Xi');
            N17C1=dot(wN17C1,Xi');
            N18C1=dot(wN18C1,Xi');
            N19C1=dot(wN19C1,Xi');
            N20C1=dot(wN20C1,Xi');
            N21C1=dot(wN21C1,Xi');
            N22C1=dot(wN22C1,Xi');
            N23C1=dot(wN23C1,Xi');
            N24C1=dot(wN24C1,Xi');
            N25C1=dot(wN25C1,Xi');

            N1C1=sigmf(N1C1,[5 1]);
            N2C1=sigmf(N2C1,[5 1]);
            N3C1=sigmf(N3C1,[5 1]);
            N4C1=sigmf(N4C1,[5 1]);
            N5C1=sigmf(N5C1,[5 1]);
            N6C1=sigmf(N6C1,[5 1]);
            N7C1=sigmf(N7C1,[5 1]);
            N8C1=sigmf(N8C1,[5 1]);
            N9C1=sigmf(N9C1,[5 1]);
            N10C1=sigmf(N10C1,[5 1]);
            N11C1=sigmf(N11C1,[5 1]);
            N12C1=sigmf(N12C1,[5 1]);
            N13C1=sigmf(N13C1,[5 1]);
            N14C1=sigmf(N14C1,[5 1]);
            N15C1=sigmf(N15C1,[5 1]);
            N16C1=sigmf(N16C1,[5 1]);
            N17C1=sigmf(N17C1,[5 1]);
            N18C1=sigmf(N18C1,[5 1]);
            N19C1=sigmf(N19C1,[5 1]);
            N20C1=sigmf(N20C1,[5 1]);
            N21C1=sigmf(N21C1,[5 1]);
            N22C1=sigmf(N22C1,[5 1]);
            N23C1=sigmf(N23C1,[5 1]);
            N24C1=sigmf(N24C1,[5 1]);
            N25C1=sigmf(N25C1,[5 1]);

            Xi2=[N1C1 N2C1 N3C1 N4C1 N5C1 N6C1 N7C1 N8C1 N9C1 N10C1 N11C1 N12C1 N13C1 N14C1 N15C1 N16C1 N17C1 N18C1 N19C1 N20C1 N21C1 N22C1 N23C1 N24C1 N25C1];

            N1C2=dot(wN1C2,Xi2);
            N2C2=dot(wN2C2,Xi2);
            N3C2=dot(wN3C2,Xi2);
            N4C2=dot(wN4C2,Xi2);
            N5C2=dot(wN5C2,Xi2);
            N6C2=dot(wN6C2,Xi2);
            N7C2=dot(wN7C2,Xi2);
            N8C2=dot(wN8C2,Xi2);
            N9C2=dot(wN9C2,Xi2);
            N10C2=dot(wN10C2,Xi2);
            N11C2=dot(wN11C2,Xi2);
            N12C2=dot(wN12C2,Xi2);
            N13C2=dot(wN13C2,Xi2);
            N14C2=dot(wN14C2,Xi2);
            N15C2=dot(wN15C2,Xi2);
            N16C2=dot(wN16C2,Xi2);
            N17C2=dot(wN17C2,Xi2);
            N18C2=dot(wN18C2,Xi2);
            N19C2=dot(wN19C2,Xi2);
            N20C2=dot(wN20C2,Xi2);

            N1C2=sigmf(N1C2,[5 1]);
            N2C2=sigmf(N2C2,[5 1]);
            N3C2=sigmf(N3C2,[5 1]);
            N4C2=sigmf(N4C2,[5 1]);
            N5C2=sigmf(N5C2,[5 1]);
            N6C2=sigmf(N6C2,[5 1]);
            N7C2=sigmf(N7C2,[5 1]);
            N8C2=sigmf(N8C2,[5 1]);
            N9C2=sigmf(N9C2,[5 1]);
            N10C2=sigmf(N10C2,[5 1]);
            N11C2=sigmf(N11C2,[5 1]);
            N12C2=sigmf(N12C2,[5 1]);
            N13C2=sigmf(N13C2,[5 1]);
            N14C2=sigmf(N14C2,[5 1]);
            N15C2=sigmf(N15C2,[5 1]);
            N16C2=sigmf(N16C2,[5 1]);
            N17C2=sigmf(N17C2,[5 1]);
            N18C2=sigmf(N18C2,[5 1]);
            N19C2=sigmf(N19C2,[5 1]);
            N20C2=sigmf(N20C2,[5 1]);

            Xi3=[N1C2 N2C2 N3C2 N4C2 N5C2 N6C2 N7C2 N8C2 N9C2 N10C2 N11C2 N12C2 N13C2 N14C2 N15C2 N16C2 N17C2 N18C2 N19C2 N20C2];

            N1C3=dot(wN1C3,Xi3);
            N2C3=dot(wN2C3,Xi3);
            N3C3=dot(wN3C3,Xi3);
            N4C3=dot(wN4C3,Xi3);
            N5C3=dot(wN5C3,Xi3);
            N6C3=dot(wN6C3,Xi3);
            N7C3=dot(wN7C3,Xi3);
            N8C3=dot(wN8C3,Xi3);
            N9C3=dot(wN9C3,Xi3);
            N10C3=dot(wN10C3,Xi3);
            N11C3=dot(wN11C3,Xi3);
            N12C3=dot(wN12C3,Xi3);
            N13C3=dot(wN13C3,Xi3);
            N14C3=dot(wN14C3,Xi3);
            N15C3=dot(wN15C3,Xi3);

            N1C3=sigmf(N1C3,[5 1]);
            N2C3=sigmf(N2C3,[5 1]);
            N3C3=sigmf(N3C3,[5 1]);
            N4C3=sigmf(N4C3,[5 1]);
            N5C3=sigmf(N5C3,[5 1]);
            N6C3=sigmf(N6C3,[5 1]);
            N7C3=sigmf(N7C3,[5 1]);
            N8C3=sigmf(N8C3,[5 1]);
            N9C3=sigmf(N9C3,[5 1]);
            N10C3=sigmf(N10C3,[5 1]);
            N11C3=sigmf(N11C3,[5 1]);
            N12C3=sigmf(N12C3,[5 1]);
            N13C3=sigmf(N13C3,[5 1]);
            N14C3=sigmf(N14C3,[5 1]);
            N15C3=sigmf(N15C3,[5 1]);

            Xi4=[N1C3 N2C3 N3C3 N4C3 N5C3 N6C3 N7C3 N8C3 N9C3 N10C3 N11C3 N12C3 N13C3 N14C3 N15C3];

            N1C4=dot(wN1C4,Xi4);
            N2C4=dot(wN2C4,Xi4);
            N3C4=dot(wN3C4,Xi4);
            N4C4=dot(wN4C4,Xi4);
            N5C4=dot(wN5C4,Xi4);
            N6C4=dot(wN6C4,Xi4);
            N7C4=dot(wN7C4,Xi4);
            N8C4=dot(wN8C4,Xi4);
            N9C4=dot(wN9C4,Xi4);
            N10C4=dot(wN10C4,Xi4);

            N1C4=sigmf(N1C4,[5 1]);
            N2C4=sigmf(N2C4,[5 1]);
            N3C4=sigmf(N3C4,[5 1]);
            N4C4=sigmf(N4C4,[5 1]);
            N5C4=sigmf(N5C4,[5 1]);
            N6C4=sigmf(N6C4,[5 1]);
            N7C4=sigmf(N7C4,[5 1]);
            N8C4=sigmf(N8C4,[5 1]);
            N9C4=sigmf(N9C4,[5 1]);
            N10C4=sigmf(N10C4,[5 1]);

            Xi5=[N1C4 N2C4 N3C4 N4C4 N5C4 N6C4 N7C4 N8C4 N9C4 N10C4];

            N1C5=dot(wN1C5,Xi5);
            N2C5=dot(wN2C5,Xi5);
            N3C5=dot(wN3C5,Xi5);
            N4C5=dot(wN4C5,Xi5);
            N5C5=dot(wN5C5,Xi5);
            N6C5=dot(wN6C5,Xi5);
            N7C5=dot(wN7C5,Xi5);

            N1C5=sigmf(N1C5,[5 1]);
            N2C5=sigmf(N2C5,[5 1]);
            N3C5=sigmf(N3C5,[5 1]);
            N4C5=sigmf(N4C5,[5 1]);
            N5C5=sigmf(N5C5,[5 1]);
            N6C5=sigmf(N6C5,[5 1]);
            N7C5=sigmf(N7C5,[5 1]);

            Xi6=[N1C5 N2C5 N3C5 N4C5 N5C5 N6C5 N7C5];

            N1C6=dot(wN1C6,Xi6);
        
            if N1C6<=0.5
                Resp=0;
            elseif N1C2>0.5 && N1C2<=1.5
                Resp=1;
            elseif N1C2>1.5 && N1C2<=2.5
                Resp=2;
            elseif N1C2>2.5 && N1C2<=3.5
                Resp=3;
            elseif N1C2>3.5 && N1C2<=4.5
                Resp=4;
            elseif N1C2>4.5 && N1C2<=5.5
                Resp=5;
            else 
                Resp=6;
            end

            if Resp==Yi
                ContBuena=ContBuena+1;
            end
            %disp(strcat('La respuesta es = ',num2str(Resp),' ,y lo que debia salir es = ',num2str(Yi)));
        end
        ErrorEnt=1-(ContBuena/NEnt);
        disp(strcat('Error de entrenamiento = ',num2str(ErrorEnt)));

        %%%%%%%%%%%%%%%%Fin Calculo Entrenamiento%%%%%%%%%%%%%%%%%%%

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        %%%%%%%%%%%%%%%%Inicio Calculo Prueba%%%%%%%%%%%%%%%%%%%%%%%
        
        ContBuena=0;
        for i=1:NPru
            Xi=Xp(i,:);
            Yi=Yp(i);
            
            N1C1=dot(wN1C1,Xi');
            N2C1=dot(wN2C1,Xi');
            N3C1=dot(wN3C1,Xi');
            N4C1=dot(wN4C1,Xi');
            N5C1=dot(wN5C1,Xi');
            N6C1=dot(wN6C1,Xi');
            N7C1=dot(wN7C1,Xi');
            N8C1=dot(wN8C1,Xi');
            N9C1=dot(wN8C1,Xi');
            N10C1=dot(wN10C1,Xi');
            N11C1=dot(wN11C1,Xi');
            N12C1=dot(wN12C1,Xi');
            N13C1=dot(wN13C1,Xi');
            N14C1=dot(wN14C1,Xi');
            N15C1=dot(wN15C1,Xi');
            N16C1=dot(wN16C1,Xi');
            N17C1=dot(wN17C1,Xi');
            N18C1=dot(wN18C1,Xi');
            N19C1=dot(wN19C1,Xi');
            N20C1=dot(wN20C1,Xi');
            N21C1=dot(wN21C1,Xi');
            N22C1=dot(wN22C1,Xi');
            N23C1=dot(wN23C1,Xi');
            N24C1=dot(wN24C1,Xi');
            N25C1=dot(wN25C1,Xi');

            N1C1=sigmf(N1C1,[5 1]);
            N2C1=sigmf(N2C1,[5 1]);
            N3C1=sigmf(N3C1,[5 1]);
            N4C1=sigmf(N4C1,[5 1]);
            N5C1=sigmf(N5C1,[5 1]);
            N6C1=sigmf(N6C1,[5 1]);
            N7C1=sigmf(N7C1,[5 1]);
            N8C1=sigmf(N8C1,[5 1]);
            N9C1=sigmf(N9C1,[5 1]);
            N10C1=sigmf(N10C1,[5 1]);
            N11C1=sigmf(N11C1,[5 1]);
            N12C1=sigmf(N12C1,[5 1]);
            N13C1=sigmf(N13C1,[5 1]);
            N14C1=sigmf(N14C1,[5 1]);
            N15C1=sigmf(N15C1,[5 1]);
            N16C1=sigmf(N16C1,[5 1]);
            N17C1=sigmf(N17C1,[5 1]);
            N18C1=sigmf(N18C1,[5 1]);
            N19C1=sigmf(N19C1,[5 1]);
            N20C1=sigmf(N20C1,[5 1]);
            N21C1=sigmf(N21C1,[5 1]);
            N22C1=sigmf(N22C1,[5 1]);
            N23C1=sigmf(N23C1,[5 1]);
            N24C1=sigmf(N24C1,[5 1]);
            N25C1=sigmf(N25C1,[5 1]);

            Xi2=[N1C1 N2C1 N3C1 N4C1 N5C1 N6C1 N7C1 N8C1 N9C1 N10C1 N11C1 N12C1 N13C1 N14C1 N15C1 N16C1 N17C1 N18C1 N19C1 N20C1 N21C1 N22C1 N23C1 N24C1 N25C1];

            N1C2=dot(wN1C2,Xi2);
            N2C2=dot(wN2C2,Xi2);
            N3C2=dot(wN3C2,Xi2);
            N4C2=dot(wN4C2,Xi2);
            N5C2=dot(wN5C2,Xi2);
            N6C2=dot(wN6C2,Xi2);
            N7C2=dot(wN7C2,Xi2);
            N8C2=dot(wN8C2,Xi2);
            N9C2=dot(wN9C2,Xi2);
            N10C2=dot(wN10C2,Xi2);
            N11C2=dot(wN11C2,Xi2);
            N12C2=dot(wN12C2,Xi2);
            N13C2=dot(wN13C2,Xi2);
            N14C2=dot(wN14C2,Xi2);
            N15C2=dot(wN15C2,Xi2);
            N16C2=dot(wN16C2,Xi2);
            N17C2=dot(wN17C2,Xi2);
            N18C2=dot(wN18C2,Xi2);
            N19C2=dot(wN19C2,Xi2);
            N20C2=dot(wN20C2,Xi2);

            N1C2=sigmf(N1C2,[5 1]);
            N2C2=sigmf(N2C2,[5 1]);
            N3C2=sigmf(N3C2,[5 1]);
            N4C2=sigmf(N4C2,[5 1]);
            N5C2=sigmf(N5C2,[5 1]);
            N6C2=sigmf(N6C2,[5 1]);
            N7C2=sigmf(N7C2,[5 1]);
            N8C2=sigmf(N8C2,[5 1]);
            N9C2=sigmf(N9C2,[5 1]);
            N10C2=sigmf(N10C2,[5 1]);
            N11C2=sigmf(N11C2,[5 1]);
            N12C2=sigmf(N12C2,[5 1]);
            N13C2=sigmf(N13C2,[5 1]);
            N14C2=sigmf(N14C2,[5 1]);
            N15C2=sigmf(N15C2,[5 1]);
            N16C2=sigmf(N16C2,[5 1]);
            N17C2=sigmf(N17C2,[5 1]);
            N18C2=sigmf(N18C2,[5 1]);
            N19C2=sigmf(N19C2,[5 1]);
            N20C2=sigmf(N20C2,[5 1]);

            Xi3=[N1C2 N2C2 N3C2 N4C2 N5C2 N6C2 N7C2 N8C2 N9C2 N10C2 N11C2 N12C2 N13C2 N14C2 N15C2 N16C2 N17C2 N18C2 N19C2 N20C2];

            N1C3=dot(wN1C3,Xi3);
            N2C3=dot(wN2C3,Xi3);
            N3C3=dot(wN3C3,Xi3);
            N4C3=dot(wN4C3,Xi3);
            N5C3=dot(wN5C3,Xi3);
            N6C3=dot(wN6C3,Xi3);
            N7C3=dot(wN7C3,Xi3);
            N8C3=dot(wN8C3,Xi3);
            N9C3=dot(wN9C3,Xi3);
            N10C3=dot(wN10C3,Xi3);
            N11C3=dot(wN11C3,Xi3);
            N12C3=dot(wN12C3,Xi3);
            N13C3=dot(wN13C3,Xi3);
            N14C3=dot(wN14C3,Xi3);
            N15C3=dot(wN15C3,Xi3);

            N1C3=sigmf(N1C3,[5 1]);
            N2C3=sigmf(N2C3,[5 1]);
            N3C3=sigmf(N3C3,[5 1]);
            N4C3=sigmf(N4C3,[5 1]);
            N5C3=sigmf(N5C3,[5 1]);
            N6C3=sigmf(N6C3,[5 1]);
            N7C3=sigmf(N7C3,[5 1]);
            N8C3=sigmf(N8C3,[5 1]);
            N9C3=sigmf(N9C3,[5 1]);
            N10C3=sigmf(N10C3,[5 1]);
            N11C3=sigmf(N11C3,[5 1]);
            N12C3=sigmf(N12C3,[5 1]);
            N13C3=sigmf(N13C3,[5 1]);
            N14C3=sigmf(N14C3,[5 1]);
            N15C3=sigmf(N15C3,[5 1]);

            Xi4=[N1C3 N2C3 N3C3 N4C3 N5C3 N6C3 N7C3 N8C3 N9C3 N10C3 N11C3 N12C3 N13C3 N14C3 N15C3];

            N1C4=dot(wN1C4,Xi4);
            N2C4=dot(wN2C4,Xi4);
            N3C4=dot(wN3C4,Xi4);
            N4C4=dot(wN4C4,Xi4);
            N5C4=dot(wN5C4,Xi4);
            N6C4=dot(wN6C4,Xi4);
            N7C4=dot(wN7C4,Xi4);
            N8C4=dot(wN8C4,Xi4);
            N9C4=dot(wN9C4,Xi4);
            N10C4=dot(wN10C4,Xi4);

            N1C4=sigmf(N1C4,[5 1]);
            N2C4=sigmf(N2C4,[5 1]);
            N3C4=sigmf(N3C4,[5 1]);
            N4C4=sigmf(N4C4,[5 1]);
            N5C4=sigmf(N5C4,[5 1]);
            N6C4=sigmf(N6C4,[5 1]);
            N7C4=sigmf(N7C4,[5 1]);
            N8C4=sigmf(N8C4,[5 1]);
            N9C4=sigmf(N9C4,[5 1]);
            N10C4=sigmf(N10C4,[5 1]);

            Xi5=[N1C4 N2C4 N3C4 N4C4 N5C4 N6C4 N7C4 N8C4 N9C4 N10C4];

            N1C5=dot(wN1C5,Xi5);
            N2C5=dot(wN2C5,Xi5);
            N3C5=dot(wN3C5,Xi5);
            N4C5=dot(wN4C5,Xi5);
            N5C5=dot(wN5C5,Xi5);
            N6C5=dot(wN6C5,Xi5);
            N7C5=dot(wN7C5,Xi5);
            
            N1C5=sigmf(N1C5,[5 1]);
            N2C5=sigmf(N2C5,[5 1]);
            N3C5=sigmf(N3C5,[5 1]);
            N4C5=sigmf(N4C5,[5 1]);
            N5C5=sigmf(N5C5,[5 1]);
            N6C5=sigmf(N6C5,[5 1]);
            N7C5=sigmf(N7C5,[5 1]);

            Xi6=[N1C5 N2C5 N3C5 N4C5 N5C5 N6C5 N7C5];

            N1C6=dot(wN1C6,Xi6);
            
            if N1C6<=0.5
                Resp=0;
            elseif N1C2>0.5 && N1C2<=1.5
                Resp=1;
            elseif N1C2>1.5 && N1C2<=2.5
                Resp=2;
            elseif N1C2>2.5 && N1C2<=3.5
                Resp=3;
            elseif N1C2>3.5 && N1C2<=4.5
                Resp=4;
            elseif N1C2>4.5 && N1C2<=5.5
                Resp=5;
            else 
                Resp=6;
            end

            if Resp==Yi
                ContBuena=ContBuena+1;
            end
            %disp(strcat('La respuesta es = ',num2str(Resp),' ,y lo que debia salir es = ',num2str(Yi)));
        end
        ErrorPru=1-(ContBuena/NPru);
        disp(strcat('Error de prueba = ',num2str(ErrorPru)));
        
        %%%%%%%%%%%%%%%%Fin Calculo Prueba%%%%%%%%%%%%%%%%%%%%%
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        %%%%%%%%%% Calculo del paso variable %%%%%%%%%%%%%%%%%%
        
%         if((ErrorEnt/ErrorEntAnt)>1.04)
%             eta=eta*0.7;
%             wN1C2=wN1C2Temp;
%             wN1C1=wN1C1Temp;
%             wN2C1=wN2C1Temp;
%             wN3C1=wN3C1Temp;
%         elseif (ErrorEnt<ErrorEntAnt)
%             eta=eta*1.2;
%         end
%         disp(strcat('El paso es = ',num2str(eta)));
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    end
%end