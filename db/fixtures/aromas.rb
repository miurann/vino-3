Aroma.seed do |s|
  s.id    = 1
  s.name  = 'レモン'
  s.image = Rails.root.join("app/assets/images/lemon.jpeg").open
end

Aroma.seed do |s|
  s.id    = 2
  s.name  = 'カシス'
  s.image = Rails.root.join("app/assets/images/cassis.jpg").open
end
