# Explications

On arrive sur le HOME du level02, et la on tombe nez a nez avec un fichier pcap (log reseau)

J'envois ca sur ma machine host en faisant :

`scp level02.pcap titus@192.168.0.29:~/42/snowcrash/level02/Ressources/`

J'ouvre level02.pcap avec Wireshark.

On peut voir qu'il y a une demande dans les requete de taper son mot de passe, et si on suit trame par trame chaque data envoyé on peut voir s'afficher :

ft_wandr...NDRel.L0L
(66 74 5f 77 61 6e 64 72 7f 7f 7f 4e 44 52 65 6c 7f 4c 30 4c 0d)

selon la table ascii 7F = DEL, il suffit de revenir donc en arriere du nombre de 7F et recraser la data, et 0D = \r , un retour chariot, donc une validation.

ce qui donne :

ft_waNDReL0L


