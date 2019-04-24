# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

La BDD album contient 347 album ( `Album.all.length` )
L'artiste de "White Room" est Eric Clapton ( `Track.find_by(title: "White Room").artist` )
La chanson qui dure exactement 188133ms est Perfect (`Track.find_by(duration: 188133).title` )
Le groupe qui a sorti Use Your Illusion II est Guns N Roses (`Album.find_by(title: "Use Your Illusion II").artist`)

Il y a 13 album qui contiennent le "Great"(`Album.where("title like ?", "%great%")`)
Supprimer les albums contenant le "music" :`Album.where("title like ?", "%music%").destroy_all`  
Il y a 2 albums d'AC/DC (`Album.where(artist: "AC/DC").length`)
Il n'y a pas de musique qui dure exactement 158589ms (`Track.where(duration: 158589).length`)

Affichage des titres d'AC/DC : `tp Track.where(artist: "AC/DC")`
Affichage des titres de l'album Let There Be Rock : `tp Track.where(album: "Let There Be Rock")`
Le prix total de l'album est de 7,92$ et dure 2453259ms (`Track.where(album: "Let There Be Rock").sum(:price)` et `Track.where(album: "Let There Be Rock").sum(:duration)`)
L'intégralité de la discographie de "Deep Purple" coûte 90,09 $ (`Track.where(artist: "Deep Purple").sum(:price)`)
