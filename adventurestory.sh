#!/bin/bash

# Create an interactive adventure story that allows the user to choose different paths
# Use loops and conditionals
# The user will make choices that affect the outcome of the story

# Use the function command to group a set of commands under one path. This can be called multiple times throughout the script. 


# Story introduction
function intro() {
    echo "Welcome to the Sweet Adventure!"
    echo "You find yourself at a crossroads in the Land of Sweets."
    echo "One path leads to Gummy Bear World, and the other leads to Chocolate World."
    echo "Which path will you take?"
}

# Path to Gummy Bear World
function gummy_bear_world() {
    echo "You chose the path to Gummy Bear World."
    echo "As you arrive, you are greeted by a kingdom of colorful, bouncing gummy bears."
    echo "The Gummy Bear King offers you a golden gummy bear. Do you want to eat it? (yes/no)"
    read choice

    if [[ $choice == "yes" ]]; then
        echo "You eat the golden gummy bear and instantly gain magical powers!"
        echo "Congratulations, you can now summon gummy bears at will. You've completed the adventure successfully!"
    elif [[ $choice == "no" ]]; then
        echo "You politely decline the golden gummy bear, but the king is offended."
        echo "The gummy bears chase you out of the kingdom. Unfortunately, you get lost in the Forest of Marshmallows."
        echo "Game Over."
    else
        echo "Invalid choice. Please type 'yes' or 'no'."
        gummy_bear_world
    fi
}

# Path to Chocolate World
function chocolate_world() {
    echo "You chose the path to Chocolate World."
    echo "As you enter, you're surrounded by rivers of chocolate and mountains of chocolate bars."
    echo "You find a giant chocolate fountain. Do you want to take a dip or continue exploring? (dip/explore)"
    read choice

    if [[ $choice == "dip" ]]; then
        echo "You take a dip in the chocolate fountain, and it turns you into a chocolate statue!"
        echo "Congratulations, you've become a permanent part of Chocolate World. Sweet dreams!"
    elif [[ $choice == "explore" ]]; then
        echo "You decide to explore further and discover a hidden chocolate factory."
        echo "The factory owner offers you a lifetime supply of chocolate. You've completed the adventure successfully!"
    else
        echo "Invalid choice. Please type 'dip' or 'explore'."
        chocolate_world
    fi
}

# Starting the loop for this adventure
intro
echo "Type 'gummy' to go to Gummy Bear World or 'chocolate' to go to Chocolate World."
read choice

if [[ $choice == "gummy" ]]; then
    gummy_bear_world
elif [[ $choice == "chocolate" ]]; then
    chocolate_world
else
    echo "Invalid choice. Please type 'gummy' or 'chocolate'."
    echo "Restarting the adventure..."
    $0 # Restart the script
fi
