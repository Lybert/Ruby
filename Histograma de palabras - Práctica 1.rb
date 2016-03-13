# Programa para crear un Histograma a partir de un texto pasado como parámetro.

puts "Texto a comprobar: "

text = gets.chomp
puts text

# Aquí obtenemos el texto pasado por el ususario.

words = text.split(" ")

# Con el metodo ".split()" separamos el texto basandonos en un patrón que establecemos en el paréntesis.

frequencies = Hash.new(0) # Creamos un "Hash" al que le establecemos un valor por defecto de 0.
    words.each { |word|
        frequencies[word] += 1
    }
# Mediante ".each", interactuamos con los valores que recoge la variable "words", añadiendolas
# al Hash "frequencies" y añadiendo un "1" cada vez que se repita la palabra.

frequencies = frequencies.sort_by do |word|
    frequencies
end
frequencies.reverse!

# Ordenamos el Hash "frequencies" a la inversa, es decir, de mayor a menor número de repeticiones de una palabra.

frequencies.each do |word, frequency|
    puts word + " " + frequency.to_s
end

# Mostramos por pantalla cada palabra seguida de cuantas veces se ha repetido a lo largo del texto.
