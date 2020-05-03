Base code is from Paul Hudson's 100 Days of SwiftUI.

Challenge
1) Disallow answers that are shorter than three letters or are just our start word. For the three-letter check, the easiest thing to do is put a check into isReal() that returns false if the word length is under three letters. For the second part, just compare the start word against their input word and return false if they are the same.
2) Add a left bar button item that calls startGame(), so users can restart with a new word whenever they want to.
3) Put a text view below the List so you can track and show the player’s score for a given root word. How you calculate score is down to you, but something involving number of words and their letter count would be reasonable.
