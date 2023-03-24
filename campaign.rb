=begin
入力　キャンペーンの日数、直近の期間　

処理　日数ーキャンペーンの日数＝キャンペーン対象外の人数
     配列の一番後ろからキャンペーン対象外の人数を除外する
     残ったpast_customersの配列の中に同一の名前があったら一人としてカウントする
     合計人数を出力

出力　キャンペーンの対象者の人数






=end 
#キャンペーン対象外の日数
without_campaign_dates = gets.to_i

#直近何日か
past_dates = gets.to_i

#直近のお客さんの名前
past_customers = []

past_dates.times do
  person = gets.to_s
  past_customers.push(person)
end

#キャンペーン対象外の人数
numbers_without_campaign = 
