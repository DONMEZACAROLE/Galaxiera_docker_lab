#BREF RESUME SUR SOKECT#

EXPLICATION

1. le socket est le point d'entré d'une API Docker
2. il est utilisé pour communiquer avec le démon principal du docker par defaut.
3. Il est utilisé par defaut par docker CLI pour executer des commandes doker.
4. IL existe 2types de socket:
5. le socket TCP et le socketde type UNIX
6. elle s'execute sur localhost:2375/images/json
7. donner accès à notre socket donc à L'API Docker à un conteneur revient globalement à dire que nous donnons un accès root à votre hote.
8. le socket à plusieurs services 
