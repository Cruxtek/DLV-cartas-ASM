%puzzle 

% En una calle, hay 5 casas. Cada una es pintada con un color diferente.
% En cada casa vive alguien que viene de un diferente país.
%Cada uno tiene una mascota favorita, una bebida favorita y una marca de cigarros favorita.

%define calle
{color(verde,blanco,amarillo,rojo,azul),pais(noruego,espanol,ukraniano,japones,ingles),mascota(perro, caballo, vivora, zorro, zebra), bebida(cafe, vino, leche, agua, te),fuma(chesterfield, kool, gitanes, craven, oldgold)} = 1:- casa(X),X=1..5.

casa(1):-color(azul), pais(noruego). 
casa(X):-X=2..5.
casa(X):-color(blanco), x<5.
casa(X+1):-color(verde),not color(blanca), bebida(cafe), X<6.
casa(3):-bebida(leche).
casa(X):-X=3..5.
casa(X):-mascota(vivora), fuma(oldgold).
casa(X):-pais(ukraniano), bebida(te).
casa(X):-fuma(kool), color(amarilla), mascota(caballo).
casa(X):-fuma(chesterfield), mascota(zorro).
casa(X):-fuma(gitanes), bebida(vino).
casa(X):-pais(japones), fuma(craven).
casa(X):-pais(espanol), mascota(perro).

tiene:-mascota(zebra), bebida(agua).
#show casa(X).
#show tiene.

% Nosotros sabemos que
% a- El inglés vive en la casa roja  - 
% b. El perro pertenece al español   -
% C- El de la casa verde toma café   -
% d. El ucraniano toma té  -
% e- La casa verde esta a la derecha de la casa blanca.  - 
% f. El que fuma Old Gold entrena una bibora.     ---
% g- El que fuma Kool vive en la casa amarilla   ---
% h- El que toma leche vive en la casa de en medio.  -
% I- El noruego vive en la primer casa de la izquierda - 
% J- El fumador de Chesterfield tiene un zorro  ----
% k- El fumador de Kool tiene un caballo ----
% l- El que fuma Gitanes toma vino. ----
% m- El japonés fuma Craven ----
% n- El noruego vive en la casa azul  -
% ¿Quién tiene a la zebra? ¿Quién toma agua?