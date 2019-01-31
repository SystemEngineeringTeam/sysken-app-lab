json.id @user.id
json.name @user.name
json.gender @user.gender.gender
json.grade @user.grade.grade

json.set! :lab do
  json.name @user.lab.lab
  json.overview @user.lab.overview
end

json.context @user.context
json.email @user.email