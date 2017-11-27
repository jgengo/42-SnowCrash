# Explications

On tombe sur le HOME de level00 qui est vide

```
level00@SnowCrash:~$ ll
total 12
dr-xr-x---+ 1 level00 level00  100 Mar  5  2016 ./
d--x--x--x  1 root    users    340 Aug 30  2015 ../
-r-xr-x---+ 1 level00 level00  220 Apr  3  2012 .bash_logout*
-r-xr-x---+ 1 level00 level00 3518 Aug 30  2015 .bashrc*
-r-xr-x---+ 1 level00 level00  675 Apr  3  2012 .profile*
```

Rien de bien interessant.

Alors selon les consignes je vois qu'il faut qu'on arrive a se log en tant que flag00 pour getflag.

Je tente un :

```
find / -user flag00
```

Bien trop de Permission denied, je redirige donc les stderr vers dev null pour voir plus clair

```
find / -user flag00 2> /dev/null
```

On a en retour :

```
level00@SnowCrash:~$ find / -user flag00 2> /dev/null
/usr/sbin/john
/rofs/usr/sbin/john
```

```
level00@SnowCrash:~$ cat /usr/sbin/john
cdiiddwpgswtgt
```

```
level00@SnowCrash:~$ su flag00
Password:
su: Authentication failure
```

bien tenté mais non.

Je me dis que le mot de passe doit etre obfusqué, vu qu'on est au niveau 00 je tente des algo simple comme le ROT. 42 en est friand (cf. le rot42 en piscine, ou le rot42 de nouvelle année 2017 sur les screens de log)

cf le script en 00.rb

```
11 -->  nottoohardhere
```

on remarque donc que le ROT11 trouve qqchose qui ressemble bien a de l'anglais :)

```
level00@SnowCrash:~$ su flag00
Password:
Don't forget to launch getflag !
flag00@SnowCrash:~$ getflag
Check flag.Here is your token : x24ti5gi3x0ol2eh4esiuxias
```


