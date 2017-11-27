# Explications

On arrive sur le HOME du level02, et la on tombe nez a nez avec un fichier pcap (log reseau)

J'envois ca sur ma machine host en faisant :

`scp level02.pcap titus@192.168.0.29:~/42/snowcrash/level02/Ressources/`

J'ouvre level02.pcap avec Wireshark.

Selon une recherche Google : `Wireshark: Easily Analyze PCAP Files` 

Si on suit les trames une par une, on peut voir qu'il y a une demande dans les requete qui demande de taper son mot de passe, et si on continue a suivre les trames et qu'on recupere chaque data envoyé on peut voir s'afficher :

66 74 5f 77 61 6e 64 72 7f 7f 7f 4e 44 52 65 6c 7f 4c 30 4c 0d (hexa)
ft_wandr...NDRel.L0L (ASCII)

selon la table ASCII:

 - 7F = DEL, il suffit de revenir donc en arriere du nombre de 7F et recraser la data
 - 0D = \r , un retour chariot, donc une validation de l'utilisateur.

avec toutes ces infos, on peut determiner que le password est : 

`ft_waNDReL0L`


```
level02@SnowCrash:~$ su flag02
Password:
Don't forget to launch getflag !
flag02@SnowCrash:~$ getflag
Check flag.Here is your token : kooda2puivaav1idi4f57q8iq
```

P0WN3D