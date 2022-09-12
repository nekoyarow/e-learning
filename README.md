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
