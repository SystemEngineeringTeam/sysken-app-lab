json.array! @universities do |university|
  json.id university.id
  json.name university.university
  json.prefecture university.prefecture.prefecture
end


