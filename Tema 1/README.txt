OPREA OLIVIA MARIA-MAGDALENA 313CA

TASK 1:
Am citit numarul de clustere si multimea de numere sub forma de matrice linie cu linie.

TASK 2:
M-am documentat de pe net cam cum ar trebuii sa implementez acest algoritm si pentru al intelege.
Am inceput prin procesul de randomizare NC centroizi si a unui vector de asignare.
Am initializat variabilele cu 0.
Am calculat o prima distanta minima ca punct de pornire, apoi am calculat distanta euclidiana, iar 
daca distanta calculata este mai mica decat distamta minima de referinta se atribuie distanata aceea
distantei minime.
Am pastrat informatiile in 2 variabile pentru a calcula centrele clusterelor.
Daca un cluster este gol am ales random un alt punct ca un nou centru al clusterului.
La final am afisat coordonatele.

TASK 3:
Am luat din codul de la taskul 2 implementarea distantei euclidiene, iar apoi le-am afisat intr-un
grafic coordonatele colorate in intregime cu rosu, verde si albastru cu ajutorul unui vector de culori.

TASK 4:
Am luat din codul de la taskul 2 implementarea distantei euclidiene si am calculat costul ca suma
distantelor minime.

TASK 5:
Am parcurs de la 1 la 10 cu ajutorul unei variabile si am calculat centroizii cu ajutorul functiei
de la taskul 2, costul cu ajutorul functiei de la taskul 4 iar apoi le-am implementat intr-un grafic.

PROBLEME:
Am avut probleme la citirea matricii pe local deoarece imi afisa la inceput foarte multe linii pline
de 0-uri si dupa ce m-am prins cum se face pe local daca setez sa citeasca de la coloana 1 merge dar
pe vmchecker trebuie sa o setez coloana cu 0 ca altfel nu merge, iar apoi am mai avut o problema la
functia de la taskul 2 unde eu initializam NC variabile 0, iar uneori la teste imi dadea corect alte
ori gresit si de aceea am pus in primul for nr 250 ca sa ma asigur ca implementez indeajuns de multe 
variabile cu 0; si inca o problema am mai avut la taskul 3 unde nu am reusit sa fac punctele colorate
numai pe margine asa ca le-am umplut cu totul.

FEEDBACK:
Mi-ar placea foarte mult ca inainte sa se dea o tema sa ni se explice si la ora sau la seminar cum ar
trebuii sa o rezolvam sau sa ni se dea niste idei, deoarece a fost foarte complicat sa ne descurcam
singuri cu cautatul pe internet si intelesul fara a putea intreba laborantii despre cum ar trebuii
facute anumite implementari.
