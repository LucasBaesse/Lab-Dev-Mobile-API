
beer.model.dart : 
No arquivo bber model criamos a classe beer que define o 
tipo cerveja, declaro qual dados as respectivas variaveis 
irao receber do json.

beer.repository.dart :  
defino funcao que vai trazer os dados da api para dentro da minha
aplication. utilizo um metodo future pois a aplication depende da resposta
da API.



beer.view.dart : 
Parte grafica da aplication, crio uma lista do tipo cerveja, 
uma var controler pra acessar o metodo do controler.model. 
crion uma function ListView que constroi a estrututura da lista.
lisTile organiza a estrutura da lista baseada nos dados da API. 
Importante ressaltar do futurebuild que constroi a lista baseado 
nas def anteriores e seu tipo ~e future que aguardarã o retorno da
API.


main.dart : 
Chama as functions do View.

