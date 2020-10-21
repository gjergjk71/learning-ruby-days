
require_relative "./ascii_art.rb"

class HangMan 
    @tried_words_or_letters = []
    @n_ascii_art_items = AsciiArt.stages.length - 1;
    @tries_left = AsciiArt.stages.length - 1;
    @guess_word = "finish"
    @game_finished = false;
    def initialise(tries_left)
        @tries_left = tries_left;
    end
    def self.show_guessed_letters_and_lines
        @guess_word.split("").each do |char|
            if @tried_words_or_letters.include?char
                print(char)
            else 
                print("_")
            end
            print(" ")
        end
        print("\n")
    end
    def self.guessed_letter_or_word(letter_or_word)
        letter_or_word = letter_or_word.delete_suffix("\n")
        @tried_words_or_letters.push letter_or_word.downcase
        if (@tried_words_or_letters.include?@guess_word)
            @game_finished = 1
        end

        won = true;
        @guess_word.split("").each do |char|
            unless @tried_words_or_letters.include?char
                won = false;
                break;
            end
        end
        if won
            @game_finished = 1;
        end
        guessed_correctly = true;
        if @guess_word != letter_or_word
            unless @guess_word.split("").include?letter_or_word.downcase
                @tries_left -= 1;
                guessed_correctly = false;
            end
        end
        if @tries_left < 1
            @game_finished = -1;
        end
    end
    def self.show_ascii_art 
        i = @n_ascii_art_items - @tries_left
        puts AsciiArt.stages[i]
    end
    def self.run 
        puts AsciiArt.hangman_art;
        puts;
        puts "Welcome to HangMan Game, guess the word!"
        tries_left_cp = -1
        while @game_finished === false do
            self.show_ascii_art
            self.show_guessed_letters_and_lines
            if @tries_left != @n_ascii_art_items
                if tries_left_cp.eql?@tries_left
                    puts "Guessed correctly!";
                else
                    puts "Guessed incorrectly."
                end
            end
            puts "Tries left: #@tries_left"
            print("Guess a letter or a word: ")
            guess = gets
            tries_left_cp = @tries_left
            self.guessed_letter_or_word(guess)
            if @game_finished != false
                break;
            end
        end
        if @game_finished == 1
            puts AsciiArt.youWon_art
        elsif @game_finished == -1
            self.show_ascii_art 
            puts AsciiArt.gameOver_art
        end
    end
end