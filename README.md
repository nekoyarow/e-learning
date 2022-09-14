# テーブル設計

## usersテーブル

| Column                | Type     | Options     | 
| --------------------- | -------- | ----------- | 
| family_name           | string   | null: false | 
| first_name            | string   | null: false | 
| family_name_kana      | string   | null: false | 
| first_name_kana       | string   | null: false | 
| email                 | string   | null: false | 
| encrypted_password    | string   | null: false | 
| company_id            | integer  | null: false | 
| division_id           | integer  | null: false | 
| station_id            | integer  |             | 

### Association
- has_many :question_frames
- belongs_to :company
- belongs_to :division
- belongs_to :station

### ActiveHash
- company
- division
- station


## question_framesテーブル

| Column      | Type       | Options                        | 
| ----------- | ---------- | ------------------------------ | 
| title       | string     | null: false                    | 
| category_id | integer    | null: false                    | 
| comment     | string     | null: false                    | 
| user        | references | foreign_key: true, null: false | 

### Association
- belongs_to :user
- has_many :questions
- belongs_to :category

### ActiveHash
- category



## questionsテーブル

| Column         | Type       | Options                        | 
| -------------- | ---------- | ------------------------------ | 
| question       | text       | null: false                    | 
| question_frame | references | foreign_key: true, null: false | 

### Association
- belongs_to :question_frame
- has_many :choices


## choicesテーブル
| Column      | Type       | Options                        | 
| ----------- | ---------- | ------------------------------ | 
| content     | string     | null: false                    | 
| is_answer   | boolean    | null: false, default: false    | 
| question    | references | null: false, foreign_key: true | 

### Association
- belongs_to :question