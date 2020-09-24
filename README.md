# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## usersテーブル

| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| nickname         | string | null: false |
| email            | string | null: false |
| password         | string | null: false |
| family_name      | string | null: false |
| first_name       | string | null: false |
| family_name_kana | string | null: false |
| first_name_kana  | string | null: false |
| birthday         | date   | null: false |

### Association
- has_many :items
- has_many :buys

## itemsテーブル

| Column       | Type    | Options                        |
| -----------  | ------- | ------------------------------ | 
| name         | string  | null: false                    |
| description  | text    | null: false                    |
| price        | integer | null: false                    |
| user_id      | integer | null: false, foreign_key: true |
| category_id  | integer | null: false                    |
| condition_id | integer | null: false                    |
| fee_id       | integer | null: false                    |
| day_id       | integer | null: false                    |
| address_id   | integer | null: false                    |

### Association
- belongs_to :user
- has_one :buy

## buysテーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| user_id | integer | null: false, foreign_key: true |
| item_id | integer | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one :address

## addressesテーブル

| Column        | Type    | Options                        |
| ------------- | ------- | ------------------------------ |
| postal_code   | string  | null: false                    |
| state_id      | integer | null: false                    |
| city          | string  | null: false                    |
| address       | string  | null: false                    |
| building_name | string  |                                |
| phone_number  | string  | null: false                    |
| buy_id        | integer | null: false, foreign_key: true |

### Association
- belongs_to :buy