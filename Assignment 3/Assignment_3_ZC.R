#' BTC1855 - Assignment 2, Zachery Chan
#' R version: Version 2024.04.2+764 (2024.04.2+764)
#' Code dated to: June 30

#HA (Code review lines will start with HA-Hasan Abdo): It seems like you've started by creating "screen" functions that will update an actual figure of a hangman depending on user input. Smart!
#HA: I would sugest you add more comments (for a reviewer like me) to understand the flow of your logic better/
#HA: Great start however


#' Setting functions for use in the script
screen_1 <- function() {
  # Using cat here for better displaying than print() as "/n" helps to format the message
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "       | \n",
      "       | \n",
      "       | \n",
      "       | \n",
      "===========\n")
  cat(paste("Hi there! Let's play a game and see if you can save a life? The chosen word is", word_length, "characters long.\n"))
  cat("Your word is: ")
  cat(blank_vector, "\n")
  cat("You will get 6 lives in this game of Hangman, choose carefully now.\n")
  cat("These are the rules of the game:\n",
      "  1. Each guess consistes of a single character. \n",
      "  2. After each guess, if the guess is incorrect, a life is lost. \n", 
      "  3. Every word is related to every-day items & actvities, thats the only hint you get! \n", 
      "  4. Each game guesses the identity of ONE word (no dashes). \n",
      "  5. When you're out of lives, you lose!")
  
#HA: really like how you lay out the rules from the start, I didn't add this in my game, but I like your approach here!
  
  
} # The other functions for displaying screens follow a similar logic/structure

# Function for displaying screen when lost 1 life 
screen_2 <- function() {
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "   O   | \n",
      "       | \n",
      "       | \n",
      "       | \n",
      "===========\n")
  cat(blank_vector, "\n")
  cat(paste("Uh-oh, lost your head there huh? That's incorrect. You have", lives, "lives left\n"))
  print("Here's a list to keep track of how incorrect you are: ")
  print(incorrect_letters)
}

# Function for displaying screen when lost 2 lives 
screen_3 <- function() {
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "   O   | \n",
      "   |   | \n",
      "       | \n",
      "       | \n",
      "===========\n")
  cat(blank_vector, "\n")
  cat(paste("Now he's got a body... You have", lives, "lives left\n"))
  print("The letters you have guessed so far are: ")
  print(incorrect_letters)
}

# Function for displaying screen when lost 3 lives 
screen_4 <- function() {
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "   O   | \n",
      "  /|   | \n",
      "       | \n",
      "       | \n",
      "===========\n")
  cat(blank_vector, "\n")
  cat(paste(" Incorrect. Our friend needs a 'hand' right now. You have", lives, "lives left\n"))
  print("Maybe use a vowel? Your previous guesses so far include: ")
  print(incorrect_letters)
}

# Function for displaying screen when lost 4 lives 
screen_5 <- function() {
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "   O   | \n",
      "  /|\\  | \n",
      "       | \n",
      "       | \n",
      "===========\n")
  cat(blank_vector, "\n")
  cat(paste("What is they have a family? Oh the tragedy... You have", lives, "lives left\n"))
  print("The letters you have guessed so far are: ")
  print(incorrect_letters)
}

# Function for displaying screen when lost 5 lives 
screen_6 <- function() {
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "   O   | \n",
      "  /|\\  | \n",
      "  /    | \n",
      "       | \n",
      "===========\n")
  cat(blank_vector, "\n")
  cat(paste("Barely a leg left to stand on. You have", lives, "lives left. Only 1 life left...\n"))
  print("Choose carefully, the letters you have guessed so far are: ")
  print(incorrect_letters)
}

# Function for displaying final screen when user has lost 
screen_7 <- function() {
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "   O   | \n",
      "  /|\\  | \n",
      "  / \\  | \n",
      "       | \n",
      "===========\n")
  cat(paste("Noo! You couldn't rescue them in time :(. \n You have no lives left. The secret word was:", word, "\n"))
}

# Function for display when correct but lives = 6
screenC_1 <- function() {
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "       | \n",
      "       | \n",
      "       | \n",
      "       | \n",
      "===========\n")
  cat(blank_vector, "\n")
}

# Function for display when correct but lives = 5
screenC_2 <- function() {
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "   O   | \n",
      "       | \n",
      "       | \n",
      "       | \n",
      "===========\n")
  cat(blank_vector, "\n")
}

# Function for display when correct but lives = 4
screenC_3 <- function() {
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "   O   | \n",
      "   |   | \n",
      "       | \n",
      "       | \n",
      "===========\n")
  cat(blank_vector, "\n")
}

# Function for display when correct but lives = 3
screenC_4 <- function() {
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "   O   | \n",
      "  /|   | \n",
      "       | \n",
      "       | \n",
      "===========\n")
  cat(blank_vector, "\n")
}

# Function for display when correct but lives = 3
screenC_6 <- function() {
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "   O   | \n",
      "  /|\\  | \n",
      "  /    | \n",
      "       | \n",
      "===========\n")
  cat(blank_vector, "\n")
}

# Function for display when correct but lives = 1
screenC_5 <- function() {
  cat("Current game: \n",
      "   +---+ \n",
      "   |   | \n",
      "   O   | \n",
      "  /|\\  | \n",
      "       | \n",
      "       | \n",
      "===========\n")
  cat(blank_vector, "\n")
}

#HA: Great stuff! I followed the "screens" and it does seem to flow logically. 


# Function for capturing user input 
user_enter <- function() {
  readline(prompt = "Enter your guess: ")
}

#HA: great, maybe tell the user to enter a single letter here as well? 

# Function for displaying screen when winning the game
congrats <- function() {
  cat("

░█████╗░░█████╗░███╗░░██╗░██████╗░██████╗░░█████╗░████████╗░██████╗
██╔══██╗██╔══██╗████╗░██║██╔════╝░██╔══██╗██╔══██╗╚══██╔══╝██╔════╝
██║░░╚═╝██║░░██║██╔██╗██║██║░░██╗░██████╔╝███████║░░░██║░░░╚█████╗░
██║░░██╗██║░░██║██║╚████║██║░░╚██╗██╔══██╗██╔══██║░░░██║░░░░╚═══██╗
╚█████╔╝╚█████╔╝██║░╚███║╚██████╔╝██║░░██║██║░░██║░░░██║░░░██████╔╝
░╚════╝░░╚════╝░╚═╝░░╚══╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░╚═════╝░

      ")
  print(paste("You did it! The secret word was: ", word))
}

#HA: Very creative! I really like this idea, adds a personal touch to your game. Makes it more visually appealing. Great stuff!


# --------------------------------------------------------------------------------
# Actual code begins:

# Defining file path to txt file for list of words
file_path <- "~/Documents/BTC1855 Coding in R/ListofWords.txt"
# Please adjust this code to match where you will download the txt file

#HA: I like how you are notifying a reviewer to adjust their working directory here, mayne illustrate more for clarity. 


# Calling word list using readlines(), used suppressWarnings() to disregard message about incomplete final line in txt file
word_list <- suppressWarnings(readLines(file_path))

# Sampling random word
word <- sample(word_list,1)

# Getting character count of sampled word 
word_length <- nchar(word)

# Initializing variables
# Set lives to 6 for player 
lives <- 6

# creating blank vector for displaying the word & correct guesses, repeating "_" as fillers 
blank_vector <- c(rep("_", word_length))

#HA: Nice! Adds a visual cue for the User

# Create vector to store incorrect guesses 
incorrect_letters <- c()

# Splitting word into individual characters, stored in vector
split_word <- toupper(strsplit(word, "")[[1]])
# Using toupper() here to disregard lower/upper case for words in the txt file 
# The use of strsplit() here was very finicky, had to set this all in 1 line 

#Displaying inital screen
screen_1()

#` -----------------------------------------------------------------------------------`
#' RULES OF THE GAME: 
#' 6 LIVES (MATCHING TO TYPICAL ARTWORK FOR HANGMAN)
#' EACH GAME INVOLVVES GUESSING FOR A SINGLE WORD (NO DASHES)
#' EACH GUESS CONSISTS OF A SINGLE LETTER EACH TIME
#' AFTER EACH GUESS, A LIFE IS LOST. WHEN LIVES = 0, YOU HAE LOST (OUT OF GUESSES)
#` -----------------------------------------------------------------------------------`

#' Using while loop to ask for user input as long as lives =/= 0  

#HA: Good use of the while loop!
while (lives > 0) {
  # Calling user_enter() function (defined earlier), using toupper() to disregard typecase like in the txt file
  input <- toupper(user_enter())
  # Set default to no match 
  match <- F

#HA: I think here, you need to elaborate more on what "match" is doing.
  
  
  # Using for loop to compare single character input to all elements in split_word while keeping index count 
  for (i in seq_along(split_word)) {
    # IF the user guesses correctly, using if statement to set match = TRUE and place letter in 
    #' respective place in blank vector (dashes)
    if (split_word[i] == input) { 
      blank_vector[i] <- input
      match <- T
    }
  }
  
  #HA: great, so this is placing a correct guess within the correct position of the split word. Good stuff. 
  
  # if match = TRUE, print dashes (and correct), and congratulate 
  if (match) {
    print(blank_vector)
    print(paste("Correct! Keep going! You have", lives, "lives left"))
  
#HA: Now i understand the purpose of "match", however, I think you need to comment on this before hand so it is easier to follow through.
    
    
    #Using if-else statements to display current artwork for lives when correct 
    if (lives == 6) {
      screenC_1()
    } else if (lives == 5) {
      screenC_2()
    } else if (lives == 4) {
      screenC_3()
    } else if (lives == 3) {
      screenC_4()
    } else if (lives == 2) {
      screenC_5()
    } else if (lives == 1) {
      screenC_6()
    }
    
  #HA: Oh I like this bit here! So elegant, great job!  

  } else {
    # IF user is incorrect (match = FALSE), use of else here computes this code 
  
    # Redefine lives (reduce by 1)
    lives <- lives - 1 
    
    #Appends incorrect guess to list of incrroect letters 
    incorrect_letters <- c(incorrect_letters, input)
    
    # Set of if-else statements to determine which screen is displayed 
    if (lives == 6) {
      screen_1()
    } else if (lives == 5) {
      screen_2()
    } else if (lives == 4) {
      screen_3()
    } else if (lives == 3) {
      screen_4()
    } else if (lives == 2) {
      screen_5()
    } else if (lives == 1) {
      screen_6()
    } else if ( lives == 0) {
      screen_7()
      break ()
    } 
  }
  # If statement to display screen upon winning 
  if (identical(blank_vector, split_word)) {
    congrats()
    break()
  }
} # Closes while loop 


#HA: Overall, amazing job Zach! Great use of visuals and I felt the script had logical flow. One thing I would recommend is to add more comments, so that a reviewer (like me)
#- could easily follow along your logic/code. The game runs smoothly, functions work without errors, amaizng job once again!
