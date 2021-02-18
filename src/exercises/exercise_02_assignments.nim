# Let's practice assignments!

# There are 3 different ways to assign variables in Nim. 
 
# You can use `var` to create the variable and reassign it however
# many times you want.

# var myAge, yourAge = 30
# yourAge = 40
# myAge = 60

# You can use `const` to enforce compile time evaluation. You can't
# change this value once assigned!

# const gravity = 9.91

# You can use `let` to create a variable but it is single assigment. But
# wait, what's the difference between `const` and `let` then?
# The difference between let and const is: `let` introduces a variable 
# that can not be re-assigned, `const` means "enforce compile time evaluation 
# and put it into a data section

# let welcomeMessage = "Good morning!"
# welcomeMessage = "Buenos dias!" # Illegal: assignment to `welcomeMessage`

# I'm new and all this is weird! 
# I get it! Remember this: When in doubt use var and you'll be OK.


proc assignments*() = 
    # I'm trying to figure out how much wood I need to
    # rebuild my deck. Can you help me calculate the area
    # I need to rebuild?
    var 
        width = 2
        height = 5
    var totalArea = width * height
    doAssert(totalArea == 25, "The area doesn't seem right. My contractor said it was for sure 25sqft... To get area multiply width * height")


    # Alright and how much is this going to cost me?
    const pricePerFoot = 3
    
    # This probably won't compile because it cannot evaluate `totalArea` at 
    # compile time. Maybe we can change the variable type of `totalCost` to
    # something that evaluates at compile time. Hint: `var` evaluates at runtime.
    const totalCost = pricePerFoot * totalArea 
    doAssert(totalCost == 50, "The total price seems off. The price per foot quote I got was $2... is your formula correct?")

    echo "Passed!"