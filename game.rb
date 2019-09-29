require 'tty-prompt'

@prompt = TTY::Prompt.new

@prompt.ask('What is your name?')

new_game = @prompt.yes?('Would you like to start a new game?')
if new_game == false
    print "Goodbye"
    exit
end

continue = true

while continue == true
    start = @prompt.select("You're standing in the middle of a dense forest. There are four paths: one going north, one going east, one going south, and one going west. Which path do you take?") do |prompt|
            prompt.choice "North"
            prompt.choice "East"
            prompt.choice "South"
            prompt.choice "West"
        end
    
    if start == "North"
        north_choice = @prompt.select("You see an ogre in front of you. Do you fight or run away?") do |prompt|
                prompt.choice "Fight"
                prompt.choice "Run Away"
                prompt.choice "Go Back"
            end
        if north_choice == "Fight"
            print "You try to fight the ogre. It kills you. The end."
            exit
        elsif north_choice == "Run Away"
            print "You try to run away. The ogre chases you and kills you. The end"
            exit
        else
            redo
        end
    elsif start == "East"
        east_choice = @prompt.select("You see a goblin in front of you. Do you fight or run away?") do |prompt|
                prompt.choice "Fight"
                prompt.choice "Run Away"
                prompt.choice "Go Back"
            end
        if east_choice == "Fight"
            print "You fight the goblin and win! You are victorious! The end."
            exit
        elsif east_choice == "Run Away"
            print "You run away and fall into a lake. You drown. The end."
            exit
        else
            redo
        end
    elsif start == "South"
        south_choice = @prompt.select("You see a river in front of you. Do you try and jump across or go around?") do |prompt|
                prompt.choice "Jump Across"
                prompt.choice "Go Around"
                prompt.choice "Go Back"
            end
        if south_choice == "Jump Across"
            print "You fall into the river and hit your head on a rock. You die. The end."
            exit
        elsif south_choice == "Go Around"
            print "You go around the river and find a path that takes you home! The end."
            exit
        else
            redo
        end
    else
        west_choice = @prompt.select("You encounter a dragon attacking a princess! Do you try to save the princess or walk around?") do |prompt|
                prompt.choice "Save the Princess"
                prompt.choice "Walk Around"
                prompt.choice "Go Back"
            end
        if west_choice == "Save the Princess"
            print "You slay the dragon and save the princess. You're a hero! The end."
            exit
        elsif west_choice == "Walk Around"
            print "You try to walk around but the dragon sees you and eats you. The end."
            exit
        else
            redo
        end
    end


end




