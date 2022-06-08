puts "じゃんけん、、、"
puts "0 (グー)、1 (チョキ)、2 (パー)、3 (戦わない)"
my_hand = gets.to_i

rival_hand = rand(3)
jankens = ["グー", "チョキ", "パー"]
directions = ["上", "下", "左", "右"]

puts "ホイ！"
puts "----------"
puts "あなた：#{jankens[my_hand]}を出しました"
puts "相手：#{jankens[rival_hand]}を出しました"
puts "----------"

# あいこの場合
if my_hand == rival_hand
  puts "あいこで、、、"
  puts "0 (グー)、1 (チョキ)、2 (パー)、3 (戦わない)"
  draw_my_hand = gets.to_i
  puts "ショ！"
  puts "----------"
  puts "あなた：#{jankens[draw_my_hand]}を出しました"
  puts "相手：#{jankens[rival_hand]}を出しました"
  puts "----------"

# 勝ちの場合
elsif (my_hand == 0 && rival_hand == 1) || (my_hand == 1 && rival_hand == 2) || (my_hand == 2 && rival_hand == 0) 
  puts "あっち向いて、、、"
  puts "0 (上)、1 (下)、2 (左)、3 (右)"
  my_direction = gets.to_i
  rival_direction = rand(3)
  puts "ホイ！"
  puts "----------"
  puts "あなた：#{directions[my_direction]}"
  puts "相手：#{directions[rival_direction]}"
  if my_direction == rival_direction
      puts "おめでとう！あなたの勝ち！"
    
  else
    puts "ハズレ！";
    
  end
    
  puts "----------"

# 負けの場合
elsif (my_hand == 0 && rival_hand == 2) || (my_hand == 1 && rival_hand == 0) || (my_hand == 2 && rival_hand == 1) 
  puts "あっち向いて、、、"
  puts "0 (上)、1 (下)、2 (左)、3 (右)"
  my_direction = gets.to_i
  rival_direction = rand(3)
  puts "ホイ！"
  puts "----------"
  puts "あなた：#{directions[my_direction]}"
  puts "相手：#{directions[rival_direction]}"
  if my_direction == rival_direction
      puts "残念、、、あなたの負け。"
    
  else
    puts "セーフ！";
    
  end
  
  puts "----------"
  
end
