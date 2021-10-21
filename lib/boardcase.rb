class BoardCase
  attr_accessor :state

  
  def initialize
    #l'état de base d'une case est à 0
  @state = 0
  end

  def test
    puts "TEST REUSSI"
  end

  def change_state(state=0)
    #méthode pour changer l'etat d'une case
    @state = state
  end

  def display_case(state=0)
    #la case affiche un espace si son état est à 0 et X ou O si on était est a 1 ou 2
    if state == 1
      return "X"
    elsif state == 2
      return "O"
    else
      return " "
    end

    
  end



end