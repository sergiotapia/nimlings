# The most common string type you'll find in Nim
# is the string literal.

# "Hello there!"

# You can work with a string as if it were a seq[char].

# "Hello World!"[0] -> "H"
# "Hello World!"[0 .. 3] -> "Hell"
# "Hello World!"[^4..^1] -> "rld!"

# You can concatenate strings with the `&` sign.

# var greeting = "Hello "
# var person = "Sergio"
# echo(greeting & person)

# You can also format a string with variables by using the same `&`
# symbol at the start of the string.

# import strformat
# echo(&"{greeting} {person}")

import strformat

proc strings*() = 
    var vehicle = "Jetski"
    var cc = "150"

    echo "Ordering the Truck with 2000CC..."
    doAssert(&"{vehicle}{cc}" == "Truck 2000CC", "You seem to be ordering the wrong thing...")

    var favoriteShoe = "New Balance 990 v5 Size 10"
    echo "I need to know the brand and the shoe size before I make the order..."
    echo "Can you work with the string to extract the brand and shoe size?"

    var brand = favoriteShoe[0..6]
    doAssert(brand == "New Balance", "No, that's not the right brand.")
    
    var size = favoriteShoe[^3..^1]
    doAssert(size == "Size 10", "That's not quite my size.")

    echo "Awsome you have my brand and shoe size, can you send the order?"
    var order = &"{size} brand"
    doAssert(order == "New Balance Size 10", "That order isn't right...")

    echo "Passed!"