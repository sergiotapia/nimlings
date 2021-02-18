# To be or not to be!
# Conditionals in nim are very intuitive and easy to reason about.

# `if` statements
# var myAge = 18
# if myAge >= 21:
#     echo "You can have a beer!"
# elif myAge >= 18 and myAge <= 20:
#     echo "You are almost there, but no beer for you yet!"
# else:
#     echo "You are way too young for beer!"

# `if` has the following:
#     == equals
#     != not equals
#     <
#     and 
#     or 

# `case` statements
# case myAge
# of 0..17: echo "You are way too young for beer!"
# of 18..20: echo "You are almost there, but no beer for you yet!"
# else: echo "You can have a beer!" 

proc if_conditionals*() = 
    var youAreStrong = false
    var benchPressMax = 135

    if (benchPressMax >= 225):
        youAreStrong = true

    doAssert(youAreStrong, "It seems you aren't benching at least 225...")

    var
        canUseTheGym = false
        paidYourMembership = true
        haveDebt = false
    
    # You should be able to use the gym if you paid your membership and have no debt...
    if (haveDebt and paidYourMembership == false):
        canUseTheGym = true

    doAssert(canUseTheGym, "Look at the conditional, we need you in the gym ASAP!")

    echo "Passed!"