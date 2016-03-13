## Creamos un "Hash" vacío, donde almacenaremos las películas con sus rankings.

movies = {}

## Le decimos al usuario que es lo que desea ralizar y obtenemos su respuesta.

puts "¿Qué te gustaría realizar?"
puts "Add -- Valorar una película."
puts "Update -- Actualizar una película."
puts "Display -- Ver el ranking de las películas."
puts "Delete -- Eliminar una película."

choice = gets.chomp
puts choice

## Con la sentencia "case", creamos las diferentes acciones que realizará el
## programa.
case choice
## En esta opción, le pedimos al usuario que indique una película y una
## valoración del 0 al 5, de la misma. Si la película ya está almacenada, el
## programa le devolverá un mensaje indicandolo.
    when "Add"
        puts "Escribe la película que quieres guardar: "
        title = gets.chomp
        puts "Indica una valoración de la película (0 a 5)"
        rating = gets.chomp
        if movies[title.to_sym] == nil
            puts movies[title.to_sym] = rating.to_i
            puts "Se ha almacenado la información indicada"
        else
            puts "Esta película ya ha sido almacenada"
        end
## Aquí se le pide al usuario que introdusca el nombre de una película ya
## almacenada. Si no existe, se le devolverá un mensaje de error.
    when "Update"
        puts "Escribe el nombre de la película que quieras actualizar: "
        title = gets.chomp
        if movies[title] = nil
            puts "Error: la película indicada no existe."
        else
            puts "Escribe la nueva valoración de la película '#{title}'"
            rating = gets.chomp
            puts movies[title.to_sym] = rating.to_i
            puts "Se ha actualizado la información con éxito."
        end
## Con esta opción, se le muestran al usuario, todas las películas almacenadas
## en el "Hash".
    when "Display"
        movies.each do |title, rating|
            puts "#{title}: #{rating}"
        end
## Por último, le pedimos al usuario el nombre de la película que quiere
## eliminar. Si la película no se encuentra en el "Hash", le devolverá un
## mensaje de error.
    when "Delete"
        puts "Escribe el nombre de la película que quieras eliminar: "
        title = gets.chomp
        if movies[title] = nil
            puts "Error: la película indicada no existe."
        else
            movies.delete(title)
            puts "La película se ha eliminado con éxito."
        end
## En caso de que se le pase una opción inválida al programa, este devolverá
## el siguiente error.
    else
        puts "Error: Debes indicar una de las opciones disponibles."
end
