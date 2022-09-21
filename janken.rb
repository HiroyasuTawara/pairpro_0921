class Player
  def hand
    puts "0~2から選んでね"
    puts "0:グー、1:チョキ、2:パー"
    input_hand = gets.chomp
    collect_hand = ["0","1","2"]
    while true
      if collect_hand.include?(input_hand)
        return input_hand.to_i
      else
        puts "もう一度0〜2から選んでね"
        puts "0:グー、1:チョキ、2:パー"
        input_hand = gets.chomp
      end      
    end
  end
end 

class Enemy 
  
end

class Compare
end

player = Player.new
player.hand