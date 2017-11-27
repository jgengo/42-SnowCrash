# Explications

Bon là pas trop de surprise, en trifouillant dans le level00, j'avais remarqué une ligne interessante dans `/etc/passwd` la ligne flag01, comporte aussi un mot de passe.

Sous conseil de la vidéo de presentation je me suis renseigné sur john the ripper, qui permet de dump les fichiers passwd. let's try

on copy/paste la ligne interessante 

` echo "flag01:42hDRfypTqqnw:3001:3001::/home/flag/flag01:/bin/bash" > etc_passwd`

et on lance :

```
~/42/snowcrash/level01(master*) » john etc_passwd                                                                                                                                                 titus@air
Loaded 1 password hash (descrypt, traditional crypt(3) [DES 128/128 SSE2-16])
Press 'q' or Ctrl-C to abort, almost any other key for status
abcdefg          (flag01)
1g 0:00:00:00 100% 2/3 100.0g/s 139300p/s 139300c/s 139300C/s raquel..bigman
Use the "--show" option to display all of the cracked passwords reliably
Session completed
```

en moins d'une demi seconde, on obtient : `abcdefg`

et voilà

```
level00@SnowCrash:~$ su flag01
Password:
Don't forget to launch getflag !
flag01@SnowCrash:~$ getflag
Check flag.Here is your token : f2av5il02puano7naaf6adaaf
```