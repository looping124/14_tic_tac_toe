class Game
  attr_accessor :player_name
  attr_accessor :players_array
  attr_accessor :player1 ,:player2
  def initialize()
    system('clear')
    print "+"
    print "-"*80
    puts "+"
    print "|"
    print "Bonjour et bien venue dans TIC TAC TOE".center(80)
    puts "|"
    print "|"
    print "2 joueurs vont s'affronter".center(80)
    puts "|"
    print "+"
    print "-"*80
    puts "+"
    puts "Veuillez entrer le nom du Joueur 1 : ".center(80)
    print ">"
    player1_name = gets.chomp
    @player1 = Player.new(player1_name)
    puts "Veuillez entrer le nom du Joueur 2 : ".center(80)
    print ">"
    player2_name = gets.chomp
    @player2 = Player.new(player2_name)
    @players_array = [@player1,@player2]
    self.new_game
  end
  
  def start
  end

  def new_game
    puts "Nouvelle partie :"
    @board = Board.new
    while is_game_still_on? == 0
      self.round
    end
  end



  def round
    #au tour du joueur 1
    puts "#{@player1.player_name}, où veux tu jouer ?"
    print ">"
    player_choice = gets.chomp
    testtest = @board.turn1(player_choice)
    while testtest == false
      puts "mauvais choix #{@player1.player_name}, où veux tu jouer ?"
      print ">"
      player_choice = gets.chomp
      testtest = @board.turn1(player_choice)
    end
    #au tour du joueur 2 si la partie n'est pas terminée
    if self.is_game_still_on? == 0
      puts "#{@player2.player_name}, où veux tu jouer ?"
      print ">"
      player_choice = gets.chomp
      testtest = @board.turn2(player_choice)
      while testtest == false
        puts "mauvais choix #{@player2.player_name}, où veux tu jouer ?"
        print ">"
        player_choice = gets.chomp
        testtest = @board.turn2(player_choice)
      end
    end
    if self.is_game_still_on? == 1
      self.end(1)
    elsif self.is_game_still_on? == 2
      self.end(2)
    elsif self.is_game_still_on? == 3
      self.end(3)
    end
  end


  def is_game_still_on?
    if @board.is_there_a_winner? == 1
      return 1 
    elsif@board.is_there_a_winner? == 2
      return 2
    elsif @board.taken_case_array.size==9
      return 3 
    else
     return 0 
    end
    
  end

  def end(result)
    if result == 3
      puts "match nul"
    elsif result == 1
      puts "#{@player1.player_name} a gagné la partie !"
    elsif result == 2
      puts "#{@player2.player_name} a gagné la partie !"
    else
      puts "bug"
    end
    puts "Voulez vous rejouer ? oui (o) ou non (n)"

    again = gets.chomp
    if again == "o"
      game = NewGame.new()
    else
    end

  end


end

# class NewGame < Game
#   def initialize
#     system('clear')
#     print "+"
#     print "-"*80
#     puts "+"
#     print "|"
#     print "Bonjour et bien venue dans TIC TAC TOE".center(80)
#     puts "|"
#     print "|"
#     print "2 joueurs vont s'affronter".center(80)
#     puts "|"
#     print "+"
#     print "-"*80
#     puts "+"
#     puts "Toujours  contre "
#   end
#   game = Game.new
#   game.new_game
# end