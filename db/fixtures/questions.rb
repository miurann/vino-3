Question.seed do |s|
  s.id          = 1
  s.content     = 'テヌータ・サン・アントニオ アマローネ・デッラ・ヴァルポリチェッラ セレツィオーネ アントニオ・カスタグネディはどんな種類のワインでしょうか？'
  s.description = 'アマローネは陰干しぶどうを使った赤ワインです'
  s.wine_id     = 1
  s.region_id   = 6
end

Question.seed do |s|
  s.id          = 2
  s.content     = 'ワインの第2問出題テストです'
  s.description = '第2問の正解解説です'
  s.wine_id     = 2
  s.region_id   = 6
end

Question.seed do |s|
  s.id          = 3
  s.content     = 'ワインの第3問出題テストです'
  s.description = '第3問の正解解説です'
  s.wine_id     = 3
  s.region_id   = 3
end
