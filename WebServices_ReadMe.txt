
beer.model.dart : 

No arquivo beer.model criamos a classe 
beer que define o tipo cerveja. declaro qual 
dados as respectivas variaveis irão receber 
do JSON. 

beer.repository.dart :  

Defina funcão que vai trazer os dados da API 
para dentro da minha aplication. Utilizo um metodo
future pois a aplication depende da resposta da API. 


beer.view.dart : 

Parte grafica da aplication, crio uma lista do tipo cerveja,
um variavel controler pra acessar o metodo do controler.model,
crio uma function ListView que constroi a estrutura da Lista. 
listTile organizo a estrutura da lista baseada nos dados da API.
importante ressaltar do futurebuild constroi a lista com base nas
definicoes anteriores e e tipo future, pois aguarda a resposta da API


main.dart : 

Chama as functions da View. 
