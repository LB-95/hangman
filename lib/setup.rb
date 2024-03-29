module  Setup
    $block = "-------------------"

    def welcome
        puts  $block.center(80)
        puts "Welcome to Hangman!".center(80)
        puts  $block.center(80)
    end
    def options
        puts "What do you want to do?"
        puts "1- New game"
        puts "2- Load game"
        puts "3- Quit"
        input = gets.chomp.downcase
        choise(input)
    end

    def random_word
        dict = File.read("5desk.txt").split
        cout = 0
        dict.each {|w| cout +=1 if w}
        word = dict[rand(cout)]
        if word.size > 4 && word.size >13
            walid_word = word
        else
            random_word
        end
    end

    def hide(word)
        hidden_word = []
        word.each_char {|char| hidden_word << "_"}
        hidden_word.join(" ")
    end

    def guess_error
        puts "this is not a valid guess!"
    end


    def turns_left
        puts "You have #{@turn} turns left"
    end
    def winner
        puts $block.center(80)
        puts "You are the Winner!".center(80)
        puts $block.center(80)
    end
    def g_o
        puts "Game Over".center(80)
    end 
            
end