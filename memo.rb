require "csv"

puts "1（新規でメモを作成）2（既存のメモ編集する）"

memo_type = gets.chomp.to_s

if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp.to_s

  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dをおします"
  memo_content = $stdin.read.chomp

  CSV.open("#{file_name}.csv","w") do |csv|
    csv << ["#{memo_content}"]
  end

elsif memo_type == "2"
  puts "編集するファイルを拡張子を除いて入力してください"
  edit_file_name = gets.chomp.to_s
  
  puts "編集内容を入力してください"
  puts "完了したらCtrl + Dをおします"
  edit_content = $stdin.read.chomp

  CSV.open("#{edit_file_name}.csv","w") do |csv|
    csv << ["#{edit_content}"]
  end 

else
  puts "1または2を入力してください。"
end
