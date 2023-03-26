=begin
入力　キャンペーンの日数、直近の期間　

処理　日数ーキャンペーンの日数＝キャンペーン対象の人数
     配列の一番前からキャンペーン対象の人数を取り出す。取り出した名前がダブっていたら１人としてカウントし新しい配列に入れる
     残ったpast_customersの配列の中に同一の名前があったら一人としてカウントする
     合計人数を出力
uniqメソッドは重複している要素を取り除いた配列を返す
p [1, 3, 2, 2, 3].uniq  #=> [1, 3, 2]

出力　キャンペーンの対象者の人数






=end 
#キャンペーン対象外の日数
without_campaign_dates = gets.to_i

#直近何日か
past_days = gets.to_i

#直近のお客さんの名前
past_customers = []

past_days.times do
  person = gets.to_s
  past_customers.push(person)
end


#キャンペーン対象の人数
campaign_numbers = past_days - without_campaign_dates

#キャンペーンの対象人数が０かそれ以外かの時で処理を分ける
case  campaign_numbers

when 0
  puts 0 
else
  
  people_with_campaign = past_customers.first(campaign_numbers)
  answer = people_with_campaign.uniq
  puts answer.length
  # puts who.length
end
 
 