%Obs: Nome Composto -> nome_composto (sem acentuacao)

%fatos
camisa(amarela).
camisa(azul).
camisa(branca).
camisa(verde).
camisa(vermelha).

nome(ana).
nome(claudia).
nome(fernanda).
nome(helen).
nome(larissa).

experimentou(granadilho).
experimentou(jambo_rosa).
experimentou(moranga).
experimentou(nespera).
experimentou(pitaya_amarela).

comprou(carnes).
comprou(especiarias).
comprou(peixes).
comprou(queijos).
comprou(vinhos).

gastou(80).
gastou(100).
gastou(150).
gastou(180).
gastou(210).

veiocom(filho).
veiocom(irma).
veiocom(mae).
veiocom(marido).
veiocom(namorado).


%Predicados
todosDiferentes([]).
todosDiferentes([H|T]) :- not(member(H, T)), todosDiferentes(T).

aEsquerda(X, Y, Lista) :- nth0(IndexX, Lista, X), nth0(IndexY, Lista, Y), IndexX < IndexY.
aDireita(X, Y, Lista) :- aEsquerda(Y, X, Lista).

%Solucao
solucao(ListaSolucao) :-
    ListaSolucao = [mulher(Camisa1, Nome1, Experimentou1, Comprou1, Gastou1, Veiocom1),
                    mulher(Camisa2, Nome2, Experimentou2, Comprou2, Gastou2, Veiocom2),
                    mulher(Camisa3, Nome3, Experimentou3, Comprou3, Gastou3, Veiocom3),
                    mulher(Camisa4, Nome4, Experimentou4, Comprou4, Gastou4, Veiocom4),
                    mulher(Camisa5, Nome5, Experimentou5, Comprou5, Gastou5, Veiocom5)],

%-----------------------------------------------------------------Dicas-----------------------------------------------------------------

%A Hélen veio acompanhada pelo namorado
member(mulher(_,helen,_,_,_,namorado), ListaSolucao),

%Quem veio comprar especiarias está exatamente à esquerda da mulher que veio com a irmã
nextto(mulher(_,_,_,especiarias,_,_), mulher(_,_,_,_,_,irma), ListaSolucao),

%Quem veio com o marido está ao lado da primeira mulher. --> (Ou seja, esta na posicao dois, portanto indice 1)
nth0(1, ListaSolucao, mulher(_, _, _, _, _, marido)),

%Quem veio com o filho está em uma das pontas.
(nth0(0, ListaSolucao, mulher(_, _, _, _, _, filho)) ; nth0(4, ListaSolucao, mulher(_, _, _, _, _, filho))),

%Quem está usando a camisa verde está exatamente à esquerda de quem gastou R$ 100.
nextto(mulher(verde, _, _, _, _, _), mulher(_, _, _, _, 100, _), ListaSolucao),

%A pessoa que gastou R$ 180 veio de blusa branca.
member(mulher(branca,_,_,_,180,_), ListaSolucao),

%Na quarta posição está a mulher que gastou R$ 150. --> (Ou seja, indice 3 na lista)
nth0(3, ListaSolucao, mulher(_,_,_,_,150,_)),

%A pessoa que gastou menos está na segunda posição. --> (Ou seja, indice 1 na lista)
nth0(1, ListaSolucao, mulher(_,_,_,_,80,_)),

%Ana foi ao mercado com a intenção de comprar queijos.
member(mulher(_,ana,_,queijos,_,_), ListaSolucao),

%Quem foi comprar peixes está em algum lugar à direita de quem veio com blusa branca
aDireita(mulher(_,_,_,peixes,_,_), mulher(branca,_,_,_,_,_), ListaSolucao),

%A mulher que veio acompanhada pela mae está de blusa verde
member(mulher(verde,_,_,_,_,mae), ListaSolucao),

%Quem foi comprar carnes está na primeira posição. --> (Ou seja, indice 0 na lista)
nth0(0, ListaSolucao, mulher(_,_,_,carnes,_,_)),

%A moça de blusa verde está em algum lugar à esquerda de quem foi experimentar Nêspera
aEsquerda(mulher(verde,_,_,_,_,_), mulher(_,_,nespera,_,_,_), ListaSolucao),

%A mulher que foi comprar vinhos aproveitou para experimentar Pitaya Amarela
member(mulher(_,_,pitaya_amarela,vinhos,_,_), ListaSolucao),

%A moça da segunda posição foi experimentar Moranga --> (Ou seja, indice 1 na lista)
nth0(1, ListaSolucao, mulher(_,_,moranga,_,_,_)),

%Quem experimentou Granadilho foi ao mercado para comprar queijos
member(mulher(_,_,granadilho,queijos,_,_), ListaSolucao),

%A mulher que veio com o marido está exatamente à esquerda de que experimentou Pitaya Amarela
nextto(mulher(_, _, _, _, _, marido), mulher(_, _, pitaya_amarela, _, _, _), ListaSolucao),

%A moça que experimentou Pitaya Amarela chama-se Fernanda
member(mulher(_, fernanda, pitaya_amarela, _, _, _), ListaSolucao),

%A Cláudia está exatamente à esquerda de quem experimentou Moranga.
nextto(mulher(_, claudia, _, _, _, _), mulher(_, _, moranga, _, _, _), ListaSolucao),

%A moça de camisa azul está na segunda posição. --> (Ou seja, indice 1 na lista)
nth0(1, ListaSolucao, mulher(azul,_,_,_,_,_)),

%Na primeira posição está a mulher usando camisa amarela. --> (Ou seja, indice 0 na lista)
nth0(0, ListaSolucao, mulher(amarela,_,_,_,_,_)),

%---------------------------------------------------------------------------------------------------------------------------------------



%Possibilidades
camisa(Camisa1),
camisa(Camisa2),
camisa(Camisa3),
camisa(Camisa4),
camisa(Camisa5),
todosDiferentes([Camisa1, Camisa2, Camisa3, Camisa4, Camisa5]),

nome(Nome1),
nome(Nome2),
nome(Nome3),
nome(Nome4),
nome(Nome5),
todosDiferentes([Nome1, Nome2, Nome3, Nome4, Nome5]),

experimentou(Experimentou1),
experimentou(Experimentou2),
experimentou(Experimentou3),
experimentou(Experimentou4),
experimentou(Experimentou5),
todosDiferentes([Experimentou1, Experimentou2, Experimentou3, Experimentou4, Experimentou5]),

comprou(Comprou1),
comprou(Comprou2),
comprou(Comprou3),
comprou(Comprou4),
comprou(Comprou5),
todosDiferentes([Comprou1, Comprou2, Comprou3, Comprou4, Comprou5]),

gastou(Gastou1),
gastou(Gastou2),
gastou(Gastou3),
gastou(Gastou4),
gastou(Gastou5),
todosDiferentes([Gastou1, Gastou2, Gastou3, Gastou4, Gastou5]),

veiocom(Veiocom1),
veiocom(Veiocom2),
veiocom(Veiocom3),
veiocom(Veiocom4),
veiocom(Veiocom5),
todosDiferentes([Veiocom1, Veiocom2, Veiocom3, Veiocom4, Veiocom5]).









