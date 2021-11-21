def game
  puts"じゃんけん..."

  #じゃんけん処理
  def janken
    puts "[0]グー\n[1]チョキ\n[2]パー"
  
    player_hand = gets.to_i
    program_hand = rand(3)
  
    #グー、チョキ、パーを0,1,2で判別
    jankens = ["グー","チョキ","パー"] 
    puts "ホイ！"
    puts "---------------"
    puts "あなた:#{jankens[player_hand]}を出しました"
    puts "相手:#{jankens[program_hand]}を出しました"
    puts "---------------"
  
    if player_hand == program_hand
      puts "あいこで"
      return true
    elsif (player_hand == 0 && program_hand ==1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand ==0)
      @result = "win"
      return false
    else
      @result = "lose"
      return false
    end
  end

  next_game = true

  while next_game
    next_game = janken
  end

  #あっち向いてホイ処理
  def hoi
    puts "あっち向いて〜"
    puts "[0]上\n[1]下\n[2]左\n[3]右"
  
    @player_hoi = gets.to_i
    @program_hoi = rand(4)
  
    #上下左右を0,1,2,3で判別
    hois = ["上","下","左","右"]
    puts "ホイ！"
    puts "---------------"
    puts "あなた:#{hois[@player_hoi]}"
    puts "相手:#{hois[@program_hoi]}"
    puts "---------------"
  end


  #ジャンケンとあっち向いてホイの連動
  if @result == "win"
    hoi()
    if @player_hoi == @program_hoi
      puts "あなたの勝ちです"
      return false
    else
      return true
    end
  end

  if @result == "lose"
    hoi()
    if @player_hoi == @program_hoi
      puts "あなたの負けです"
      return false
    else
      return true
    end
  end
end

#あっち向いてホイがあいこの時のループ処理
  next_game = true

while next_game
  next_game = game
end