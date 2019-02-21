# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Prefecture.create(id: 0, prefecture: '未設定')
Prefecture.create(
    [
        {prefecture: '北海道'},
        {prefecture: '青森県'},
        {prefecture: '岩手県'},
        {prefecture: '宮城県'},
        {prefecture: '秋田県'},
        {prefecture: '山形県'},
        {prefecture: '福島県'},
        {prefecture: '茨城県'},
        {prefecture: '栃木県'},
        {prefecture: '群馬県'},
        {prefecture: '埼玉県'},
        {prefecture: '千葉県'},
        {prefecture: '東京都'},
        {prefecture: '神奈川県'},
        {prefecture: '新潟県'},
        {prefecture: '富山県'},
        {prefecture: '石川県'},
        {prefecture: '福井県'},
        {prefecture: '山梨県'},
        {prefecture: '長野県'},
        {prefecture: '岐阜県'},
        {prefecture: '静岡県'},
        {prefecture: '愛知県'},
        {prefecture: '三重県'},
        {prefecture: '滋賀県'},
        {prefecture: '京都府'},
        {prefecture: '大阪府'},
        {prefecture: '兵庫県'},
        {prefecture: '奈良県'},
        {prefecture: '和歌山県'},
        {prefecture: '鳥取県'},
        {prefecture: '島根県'},
        {prefecture: '岡山県'},
        {prefecture: '広島県'},
        {prefecture: '山口県'},
        {prefecture: '徳島県'},
        {prefecture: '香川県'},
        {prefecture: '愛媛県'},
        {prefecture: '高知県'},
        {prefecture: '福岡県'},
        {prefecture: '佐賀県'},
        {prefecture: '長崎県'},
        {prefecture: '熊本県'},
        {prefecture: '大分県'},
        {prefecture: '宮崎県'},
        {prefecture: '鹿児島県'},
        {prefecture: '沖縄県'}
    ]
)

University.create(id: 0, university: '未設定', prefecture_id: 0)
University.create(
    [
        {
            university: '愛知工業大学',
            prefecture_id: 23
        },
        {
            university: '大愛知工業大学',
            prefecture_id: 23
        },
        {
            university: 'あああ大学',
            prefecture_id: 1
        },
        {
            university: 'いいい大学',
            prefecture_id: 12
        },
        {
            university: 'ううう大学',
            prefecture_id: 24
        },
        {
            university: 'えええ大学',
            prefecture_id: 41
        },
        {
            university: 'おおお大学',
            prefecture_id: 21
        },
        {
            university: 'かかか大学',
            prefecture_id: 35
        },
        {
            university: 'ききき大学',
            prefecture_id: 33
        },
        {
            university: 'くくく大学',
            prefecture_id: 11
        },
        {
            university: 'けけけ大学',
            prefecture_id: 29
        },
        {
            university: 'くくく業大学',
            prefecture_id: 34
        },
        {
            university: 'けけけ大学',
            prefecture_id: 36
        },
        {
            university: 'こここ大学',
            prefecture_id: 35
        },
        {
            university: 'さささ大学',
            prefecture_id: 23
        }
        ]
        )

Lab.create(
    [
        {
            id: 0,
            lab: '未設定',
            university_id: 1
        },
        {
            id: 1,
            lab: 'シス研',
            university_id: 1,
            overview: 'シス研'
        },
        {
            id: 2,
            lab: 'ああ研',
            university_id: 2,
            overview: 'ああ研'
        },
        {
            id: 3,
            lab: 'いい研',
            university_id: 3,
            overview: 'いい研'
        },
        {
            id: 4,
            lab: 'うう研',
            university_id: 4,
            overview: 'うう研'
        },
        {
            id: 5,
            lab: 'ええ研',
            university_id: 5,
            overview: 'ええ研'
        },
        {
            id: 6,
            lab: 'おお研',
            university_id: 6,
            overview: 'おお研'
        },
        {
            id: 7,
            lab: 'かか研',
            university_id: 7,
            overview: 'かか研'
        },
        {
            id: 8,
            lab: 'きき研',
            university_id: 8,
            overview: 'きき研'
        },
        {
            id: 9,
            lab: 'くく研',
            university_id: 9,
            overview: 'くく研'
        },
        {
            id: 10,
            lab: 'けけ研',
            university_id: 10,
            overview: 'けけ研'
        },
        {
            id: 11,
            lab: 'ここ研',
            university_id: 11,
            overview: 'ここ研'
        },
        {
            id: 12,
            lab: 'ささ研',
            university_id: 12,
            overview: 'ささ研'
        },
        {
            id: 13,
            lab: 'しし研',
            university_id: 13,
            overview: 'しし研'
        },
        {
            id: 14,
            lab: 'すす研',
            university_id: 14,
            overview: 'すす研'
        },
        {
            id: 15,
            lab: 'せせ研',
            university_id: 15,
            overview: 'せせ研'
        }
    ]
)

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


Gender.create(
    [
        {
            id: 0,
            gender: '不明'
        },
        {
            id: 1,
            gender: '男性'
        },
        {
            id: 2,
            gender: '女性'
        },
        {
            id: 9,
            gender: '適用不能'
        }
    ]
)

User.create(
    [
        {
            name: 'hogehoge',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'sysken2018@gmail.com',
            password: 'sysken2018',
            password_confirmation: 'sysken2018'
        },

        {
            name: 'aaa',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'aaa2018@gmail.com',
            password: 'aaa2018',
            password_confirmation: 'aaa2018'
        },
        {
            name: 'bbb',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'bbb2018@gmail.com',
            password: 'bbb2018',
            password_confirmation: 'bbb2018'
        },
        {
            name: 'ccc',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'ccc2018@gmail.com',
            password: 'ccc2018',
            password_confirmation: 'ccc2018'
        },
        {
            name: 'ddd',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'ddd2018@gmail.com',
            password: 'ddd2018',
            password_confirmation: 'ddd2018'
        },
        {
            name: 'eee',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'eee2018@gmail.com',
            password: 'eee2018',
            password_confirmation: 'eee2018'
        },
        {
            name: 'fff',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'fff2018@gmail.com',
            password: 'fff2018',
            password_confirmation: 'fff2018'
        },
        {
            name: 'ggg',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'ggg2018@gmail.com',
            password: 'ggg2018',
            password_confirmation: 'ggg2018'
        },
        {
            name: 'hhh',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'hhh2018@gmail.com',
            password: 'hhh2018',
            password_confirmation: 'hhh2018'
        },
        {
            name: 'iii',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'iii2018@gmail.com',
            password: 'iii2018',
            password_confirmation: 'iii2018'
        },
        {
            name: 'jjj',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'jjj2018@gmail.com',
            password: 'jjj2018',
            password_confirmation: 'jjj2018'
        },
        {
            name: 'kkk',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'kkk2018@gmail.com',
            password: 'kkk2018',
            password_confirmation: 'kkk2018'
        },
        {
            name: 'lll',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'lll2018@gmail.com',
            password: 'lll2018',
            password_confirmation: 'lll2018'
        },
        {
            name: 'mmm',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'mmm2018@gmail.com',
            password: 'mmm2018',
            password_confirmation: 'mmm2018'
        },
        {
            name: 'nnn',
            gender_id: 1,
            grade_id: 3,
            lab_id: 1,
            context: '研究内容',
            email: 'nnn2018@gmail.com',
            password: 'nnn2018',
            password_confirmation: 'nnn2018'
        },
    ]

)





