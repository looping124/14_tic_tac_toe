class Player
  attr_accessor :player_name, :player_score
  def initialize(player_name)
    @player_name = player_name
    @player_score = 0
    # puts @score.class
    puts "Joueur créé : #{@player_name}"
  end

  def player_change_name(new_name)
    @player_name = new_name
  end

  def player_display_name
    puts  @player_name
  end
end