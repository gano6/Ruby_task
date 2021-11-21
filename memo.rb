require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイルを作成してください"
  file_name = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl+Dを押します"
  memo =STDIN.read
  CSV.open("#{file_name}.csv","w") do |csv|
    csv.puts ["#{memo}"]
  end
elsif memo_type == 2
  puts "編集したいファイル名を入力してください"
  file_name = gets.chomp
  puts "編集内容を入力してください"
  puts "完了したらCtrl+Dを押します"
  memo = gets.chomp
  memo = STDIN.read
  CSV.open("#{file_name}.csv","a") do |csv|
    csv.puts ["#{memo}"]
  end
end