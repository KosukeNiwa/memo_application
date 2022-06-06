require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
memo_type = gets.to_i
 
# 続きを書いていきましょう！！(ifで条件分岐)
    
if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    memo_title = gets.to_s
    puts "メモしたい内容を記入してください"
    puts "完了したら、Ctrl + D を押してください"
    memo_content = STDIN.read
    
    CSV.open("#{memo_title}.csv",'w') do |csv|
        csv << [memo_content]
    end

end
