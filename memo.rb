require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモを編集する)"
 
memo_type = gets.chomp.to_i
 
# 続きを書いていきましょう！！(ifで条件分岐)
    
if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    memo_title = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したら、Ctrl + D を押してください"
    memo_content = STDIN.read
    
    CSV.open("#{memo_title}.csv","w") do |csv|
        csv << [memo_content]
    end

elsif memo_type == 2
    puts "既存のメモを編集します。拡張子を除いた既存のファイル名を入力して下さい。"
    memo_title = gets.chomp
    
    puts "編集したい内容を記入してください"
    puts "完了したら、Ctrl + D を押してください"
    memo_content = STDIN.read
     
    CSV.open("#{memo_title}.csv", "a") do |csv|
        csv << [memo_content]
    end
     
else
    puts "1か2のみ入力して下さい。"

end
