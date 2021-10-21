class Menu
  
  def initialize()
  end

  def display_menu_start()
    system('clear')
    print "+"
    print "-"*70
    puts "+"
    print "|"
    print "Bonjour et bien venue dans TIC TAC TOE".center(70)
    puts "|"
    print "|"
    print "2 joueurs vont s'affronter".center(70)
    puts "|"
    print "+"
    print "-"*70
    puts "+"
    puts "Veuillez entrer le nom du Joueur 1 : ".center(70)
    print ">"
    player1_name = gets.chomp
    player1 = Player.new(player1_name)
    puts "Veuillez entrer le nom du Joueur 2 : ".center(70)
    print ">"
    player2_name = gets.chomp
    player2 = Player.new(player2_name)
  end

  def display_menu_game()
  end

  def display_menu_end()
  end

end