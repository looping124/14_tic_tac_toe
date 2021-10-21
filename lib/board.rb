class Board
  attr_accessor :taken_case_array
  def initialize
    #Création des 9 board case
    @a1 = BoardCase.new()
    @a2 = BoardCase.new()
    @a3 = BoardCase.new()
    @b1 = BoardCase.new()
    @b2 = BoardCase.new()
    @b3 = BoardCase.new()
    @c1 = BoardCase.new()
    @c2 = BoardCase.new()
    @c3 = BoardCase.new()
    #affichage de la grille (vide du coup)
    self.display
    @taken_case_array =[]
  end

  #un tour de jeux se joue ici :
  def turn1(player_choice)
    case player_choice
    when "a1","7"
      if @taken_case_array.include?(@a1)
        return false
      else
        @a1.state=1
        @taken_case_array <<@a1
        print @taken_case_array
      end
    when "a2","8"
      if @taken_case_array.include?(@a2)
        return false
      else
        @a2.state=1
        @taken_case_array <<@a2
        print @taken_case_array
      end
    when "a3","9"
      if @taken_case_array.include?(@a3)
        return false
      else
        @a3.state=1
        @taken_case_array <<@a3
        print @taken_case_array
      end
    when "b1","4"
      if @taken_case_array.include?(@b1)
        return false
      else
        @b1.state=1
        @taken_case_array <<@b1
        print @taken_case_array
      end
    when "b2","5"
      if @taken_case_array.include?(@b2)
        return false
      else
        @b2.state=1
        @taken_case_array <<@b2
        print @taken_case_array
      end
    when "b3","6"
      if @taken_case_array.include?(@b3)
        return false
      else
        @b3.state=1
        @taken_case_array <<@b3
        print @taken_case_array
      end
    when "c1","1"
      if @taken_case_array.include?(@c1)
        return false
      else
        @c1.state=1
        @taken_case_array <<@c1
        print @taken_case_array
      end
    when "c2","2"
      if @taken_case_array.include?(@c2)
        return false
      else
        @c2.state=1
        @taken_case_array <<@c2
        print @taken_case_array
      end
    when "c3","3"
      if @taken_case_array.include?(@c3)
        return false
      else
        @c3.state=1
        @taken_case_array <<@c3
        print @taken_case_array
      end
    else
      return false
    end
    self.display
  end
  def turn2(player_choice)
    case player_choice
    when "a1","7"
      if @taken_case_array.include?(@a1)
        return false
      else
        @a1.state=2
        @taken_case_array <<@a1
        print @taken_case_array
      end
    when "a2","8"
      if @taken_case_array.include?(@a2)
        return false
      else
        @a2.state=2
        @taken_case_array <<@a2
        print @taken_case_array
      end
    when "a3","9"
      if @taken_case_array.include?(@a3)
        return false
      else
        @a3.state=2
        @taken_case_array <<@a3
        print @taken_case_array
      end
    when "b1","4"
      if @taken_case_array.include?(@b1)
        return false
      else
        @b1.state=2
        @taken_case_array <<@b1
        print @taken_case_array
      end
    when "b2","5"
      if @taken_case_array.include?(@b2)
        return false
      else
        @b2.state=2
        @taken_case_array <<@b2
        print @taken_case_array
      end
    when "b3","6"
      if @taken_case_array.include?(@b3)
        return false
      else
        @b3.state=2
        @taken_case_array <<@b3
        print @taken_case_array
      end
    when "c1","1"
      if @taken_case_array.include?(@c1)
        return false
      else
        @c1.state=2
        @taken_case_array <<@c1
        print @taken_case_array
      end
    when "c2","2"
      if @taken_case_array.include?(@c2)
        return false
      else
        @c2.state=2
        @taken_case_array <<@c2
        print @taken_case_array
      end
    when "c3","3"
      if @taken_case_array.include?(@c3)
        return false
      else
        @c3.state=2
        @taken_case_array <<@c3
        print @taken_case_array
      end
    else
      return false
    end
    self.display
  end

  #affiche la grille de jeux et la grille témoin
  def display()
    puts
    print (" "*13 + @a1.display_case(@a1.state) + " " + "|" + " " + @a2.display_case(@a2.state) + " " +"|" + " " + @a2.display_case(@a3.state) + " " *13 +                    "#" +" "*12 + "a1"+ " " + "|" +" " +"a2"+" " +"|" +" "+"a3" +" "*15)
    puts
    print (" "*12 + "-"*3 + "|" + "-"*3 +"|" +"-"*3 + " "*12 +                                                                         "#" +" "*12 + "-"*3 + "|" + "-"*4 +"|" +"-"*3+ " "*12)
    puts
    print (" "*13+ @b1.display_case(@b1.state)+ " " + "|" + " " + @b2.display_case(@b2.state) + " " +"|" + " " + @b3.display_case(@b3.state) + " " *13 +                                    "#" +" "*12+"b1"+ " " + "|" +" " +"b2"+" " +"|" +" "+"b3" +" "*15)
    puts
    print (" "*12 + "-"*3 + "|" + "-"*3 + "|" +"-"*3+ " "*12 +                                                                         "#" +" "*12 + "-"*3 + "|" + "-"*4 +"|" +"-"*3+ " "*12)
    puts
    print (" "*13+ @c1.display_case(@c1.state)+ " " + "|" + " " + @c2.display_case(@c2.state) + " " +"|" + " " + @c3.display_case(@c3.state) + " " *13 +                                  "#" +" "*12+"c1"+ " " + "|" +" " +"c2"+" " +"|" +" "+"c3" +" "*15)
    puts
    puts

  end

  def is_there_a_winner?
    if @a1.state == @a2.state && @a2.state== @a3.state && @a3.state !=0
      return @a1.state
    elsif @b1.state == @b2.state && @b2.state== @b3.state && @b3.state !=0
      return @b1.state
    elsif @c1.state == @c2.state && @c2.state== @c3.state && @c3.state !=0
      return @c1.state
    elsif @a1.state == @b1.state && @b1.state== @c1.state && @c1.state !=0
      return @a1.state
    elsif @a2.state == @b2.state && @b2.state== @c2.state && @c2.state !=0
      return @a2.state
    elsif @a3.state == @b3.state && @b3.state== @c3.state && @c3.state !=0
      return @a3.state
    elsif @a1.state == @b2.state && @b2.state== @c3.state && @c3.state !=0
      return @a1.state
    elsif @a3.state == @b2.state && @b2.state== @c1.state && @c1.state !=0
      return @a3.state
    else
      return false
    end
  end

  def reset
  end

end