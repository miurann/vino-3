Choice.seed do |s|
  s.id             = 1
  s.content        = '赤ワイン'
  s.correct_answer = true
  s.question_id    = 1
end

Choice.seed do |s|
  s.id             = 2
  s.content        = '白ワイン'
  s.correct_answer = false
  s.question_id    = 1
end

Choice.seed do |s|
  s.id             = 3
  s.content        = 'ロゼワイン'
  s.correct_answer = false
  s.question_id    = 1
end

Choice.seed do |s|
  s.id             = 4
  s.content        = 'せんたくし１'
  s.correct_answer = false
  s.question_id    = 2
end

Choice.seed do |s|
  s.id             = 4
  s.content        = '正解の選択肢'
  s.correct_answer = true
  s.question_id    = 2
end
