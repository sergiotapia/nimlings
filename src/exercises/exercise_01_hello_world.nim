# Welcome to Nim!
# It looks like our welcome message is wrong. I must have made
# a typo somewhere. Can you fix it?

# You can run the entire Nimlings exercises by running:
# `nimble run` in your terminal. 

# Give it a shot! Run the wrong code first, then fix the problem!
 
proc hello_world*() =
    let message = "Hello dude!"
    doAssert(message == "Hello world!")
    echo(message)
    echo "Passed!"