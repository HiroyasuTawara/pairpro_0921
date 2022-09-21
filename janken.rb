class Player
  def hand
    puts "0~2から選んでね"
    puts "0:グー、1:チョキ、2:パー"
    input_hand = gets.chomp
    collect_hand = ["0","1","2"]
    while true
      if collect_hand.include?(input_hand)
        puts"---------------------------------------------"
        return input_hand.to_i
      else
        puts "※ 入力された数値が正しくありません ※"
        puts "もう一度0〜2から選んでね"
        puts "0:グー、1:チョキ、2:パー"
        input_hand = gets.chomp
      end      
    end
  end
end 

class Enemy
  def hand
    rand(0..2)
  end
end

class Compare
  def play(player_hand,enemy_hand)
    janken = ["グー", "チョキ", "パー"]
    puts "相手の手は#{janken[enemy_hand]}です。"
    if player_hand == enemy_hand
      puts "あいこ"
      puts"---------------------------------------------"
      true
    elsif ((player_hand) - (enemy_hand) + 3) % 3 == 2
      puts "あなたの勝ち！"
      false
    else
      puts "あなたの負け…"
      false
    end
  end
end

class Gamestart
  def self.janken_start
    player = Player.new
    enemy = Enemy.new
    compare = Compare.new

    next_game = true
    while next_game
      next_game = compare.play(player.hand,enemy.hand)
    end
  end
end

Gamestart.janken_start