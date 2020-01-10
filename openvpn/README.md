# Miage.19 Securite


### Mise en place d'un serveur VPN basic avec openvpn

- cloner ou télécharger le projet

### Start the application : 

Puis 

```bash
sudo ./install-server.sh
```


Rendez vous au lien https://localhost:943/admin/ depuis votre navigateur.
Connecter vous au compte “openvpn” en renseignant en id et mdp (default).
Vous alors accès à l’interface admin de votre VPN.
<br><br>

Créer un compte user<br>

Depuis l’interface admin, vous verrez la config complète de votre VPN. Il n’y a rien à toucher pour que ça fonctionne, mais si vous voulez paramétrer un peu, c’est par ici que ça se passe. <br>
Pour créer un nouvel utilisateur, allez dans la section User Management > User Permissions. Vous pouvez ajouter un nouvel utilisateur, et lui ajouter un mot de passe.<br>

<br>
Vous pouvez désormais vous connecter à votre serveur vpn depuis n’importe quelle appareil. En téléchargeant le client Openvpn.

<br><br>
Une fois connecté, il se peut que vous n’ayez plus accès à internet. Si c’est le cas, réaliser les actions suivantes :
<br>
se connecter à openvpn en tant qu’admin<br>
aller dans => VPN settings<br>
Chercher => DNS Settings<br>
cocher => Have clients use specific DNS servers<br>
Dans => Primary DNS Server<br>
saisir => 8.8.8.8<br>

<br><br>
Commandes utiles :<br>
sudo service openvpn stop : arrêter le service openvpn<br>
sudo service openvpn status : consulter le status du service<br>
sudo service openvpn start : démarrer le service<br>



### Infos : 

Pour se connecter depuis le client, bien penser à mettre le "s" de https et d\'indiquer le port 943 => https://{votreip}:943/


enjoy :-)

