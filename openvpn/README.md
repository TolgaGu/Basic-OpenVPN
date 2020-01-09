# Miage.19 Securite


### Mise en place d'un serveur VPN basic avec openvpn

- cloner ou télécharger le projet

### Start the application : 

Compile the projet, initilise db with default users (admin/admin, user/user) and start the application.

Puis 

```bash
sudo ./install-server.sh
```


Rendez vous au lien https://localhost:943/admin/ depuis votre navigateur.
Connecter vous au compte “openvpn” en renseignant le mot de passe que vous avez défini précédemment.
Vous alors accès à l’interface admin de votre VPN.


Créer un compte user

Depuis l’interface admin, vous verrez la config complète de votre VPN. Il n’y a rien à toucher pour que ça fonctionne, mais si vous voulez paramétrer un peu, c’est par ici que ça se passe. 
Pour créer un nouvel utilisateur, allez dans la section User Management > User Permissions. Vous pouvez ajouter un nouvel utilisateur, et lui ajouter un mot de passe.

Depuis l’interface admin, vous verrez la config complète de votre VPN. Il n’y a rien à toucher pour que ça fonctionne, mais si vous voulez paramétrer un peu, c’est par ici que ça se passe. 


Vous pouvez désormais vous connecter à votre serveur vpn depuis n’importe quelle appareil. En téléchargeant le client Openvpn.


Une fois connecté, il se peut que vous n’ayez plus accès à internet. Si c’est le cas, réaliser les actions suivantes :

se connecter à openvpn en tant qu’admin
aller dans => VPN settings
Chercher => DNS Settings
cocher => Have clients use specific DNS servers
Dans => Primary DNS Server
saisir => 8.8.8.8

Commandes utiles :
sudo service openvpn stop : arrêter le service openvpn
sudo service openvpn status : consulter le status du service
sudo service openvpn start : démarrer le service



### Infos : 

```bash

Pour se connecter depuis le client, bien penser à mettre le "s" de https et d\'indiquer le port 943 => https://{votreip}:943/

```

enjoy :-)
