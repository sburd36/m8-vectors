# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("yellow", "red", "orange", "blue", "pink", "purple")

# Use the `sample` function to select a single marble
sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess){
  chosen <- sample(marbles, 1)
  if (guess == chosen) {
    return("You guessed correctly!")
  } else {
    return("You guessed incorrectly. Try again")
  }
}

# Play the marble game!
MarbleGame("red")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
#Was not able to get this to work
counter <- 0
PlayMarbleGame <- function(guess) {
  value <- MarbleGame(guess)
  if (identical(value, "You guessed incorrectly. Try again")) {
    counter <- counter + 1
    PlayMarbleGame(guess)
  } else {
    return (paste("You tried", counter, "times before you won."))
  }
}
  
## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability