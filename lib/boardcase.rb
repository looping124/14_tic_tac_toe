class BoardCase
  attr_accessor :state

  def initialize
  @state = 0
  end

  def test
    puts "TEST REUSSI"
  end

  def change_state(state=0)
    @state = state
  end

  def display_case(state=0)
  
    if state == 1
      return "X"
    elsif state == 2
      return "O"
    else
      return " "
    end

    
  end



end