# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ken.create(
    [
        {ken: '北海道'},
        {ken: '青森県'},
        {ken: '岩手県'},
        {ken: '宮城県'},
        {ken: '秋田県'},
        {ken: '山形県'},
        {ken: '福島県'},
        {ken: '茨城県'},
        {ken: '栃木県'},
        {ken: '群馬県'},
        {ken: '埼玉県'},
        {ken: '千葉県'},
        {ken: '東京都'},
        {ken: '神奈川県'},
        {ken: '新潟県'},
        {ken: '富山県'},
        {ken: '石川県'},
        {ken: '福井県'},
        {ken: '山梨県'},
        {ken: '長野県'},
        {ken: '岐阜県'},
        {ken: '静岡県'},
        {ken: '愛知県'},
        {ken: '三重県'},
        {ken: '滋賀県'},
        {ken: '京都府'},
        {ken: '大阪府'},
        {ken: '兵庫県'},
        {ken: '奈良県'},
        {ken: '和歌山県'},
        {ken: '鳥取県'},
        {ken: '島根県'},
        {ken: '岡山県'},
        {ken: '広島県'},
        {ken: '山口県'},
        {ken: '徳島県'},
        {ken: '香川県'},
        {ken: '愛媛県'},
        {ken: '高知県'},
        {ken: '福岡県'},
        {ken: '佐賀県'},
        {ken: '長崎県'},
        {ken: '熊本県'},
        {ken: '大分県'},
        {ken: '宮崎県'},
        {ken: '鹿児島県'},
        {ken: '沖縄県'}
    ]
)

University.create(university: '愛知工業大学', ken_id: 23)

Lab.create(lab: 'シス研', university_id: 1, overview: 'シス研')

Grade.create(
    [
        {grade: '大学1年生'},
        {grade: '大学2年生'},
        {grade: '大学3年生'},
        {grade: '大学4年生'},
        {grade: '大学院1年生'},
        {grade: '大学院2年生'}
    ]
)

Sex.create(
    [
        {
            id: 0,
            sex: '不明'
        },
        {
            id: 1,
            sex: '男性'
        },
        {
            id: 2,
            sex: '女性'
        },
        {
            id: 9,
            sex: '適用不能'
        }
    ]
)

User.create(
    [
        {
            name: 'hogehoge',
            sex_id: 1,
            grade_id: 2,
            lab_id: 1,
            context: '研究内容'
        }
    ]
)





