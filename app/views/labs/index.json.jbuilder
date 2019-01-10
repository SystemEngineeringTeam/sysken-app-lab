json.array! @labs do |lab|
  json.id lab.id
  json.name lab.lab
  json.university lab.university.university
  json.prefecture lab.university.prefecture.prefecture
  json.overview  lab.overview
end
