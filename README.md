## Instrucciones
He hecho algunos cambios, entre ellos cambiar Postgres por una base de datos MySQL.
Una vez pasadas las migraciones ejecutar un par de tareas SQL para
solucionar un bug de MySQL.

`ALTER TABLE game_of_thrones_development.characters CONVERT TO CHARACTER SET utf8mb4;`
`ALTER TABLE game_of_thrones_development.houses CONVERT TO CHARACTER SET utf8mb4;`

Lo ideal sería encolar la subida con Redis o algo por el estilo y dejar la súbida de manera "asincróna".

## ISSUE 1

Create an importer for characters
We are currently adding the characters manually with the form. We would need to be able to import a CSV file containing the data. I've put together a sample CSV file that we could use here.
I would need to see the result of the import (if some lines don't work for example)


## ISSUE 2

Add images to characters


In the CSV files, characters have one or multiple links to images of the Wikia.
We need to add these images to each character within the importer. Only images with a source are valid.



## ISSUE 3

Link character with house

Until now, all characters were being created, but we want to focus this iteration on the main characters only. We have decided to start from scratch the character list and only gather characters that have a house.
Instead of adding the house manually, we realized we could add it to the CSV file and directly associate the character with a house. We added the "house" column, that contains the name of the house the character is from. We have noticed that sometimes, people entering the data were adding some extra spaces by mistake; probably some are still remaining.
