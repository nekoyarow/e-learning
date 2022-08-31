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
| company               | string   | null: false | 
| division              | string   | null: false | 
| station               | string   | null: false | 

### Association