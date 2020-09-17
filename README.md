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
| birthday         | string | null: false |

### Association
- has_many :items
- has_many :buys

## itemsテーブル

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| name        | string | null: false |
| description | text   | null: false |
| image       | string | null: false |
| price       | string | null: false |
| user_id     | string | null: false |
| category    | string | null: false |
| dondition   | string | null: false |
| fee         | string | null: false |
| source      | string | null: false |
| shipping    | string | null: false |

### Association
- belongs_to :user
- has_one :buy

## buysテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user_id  | references | null: false, foreign_key: true |
| lists_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :list
- has_one :address

## addressesテーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| postal_code   | string     | null: false |
| state         | string     | null: false |
| city          | string     | null: false |
| address       | string     | null: false |
| building_name | string     |             |

### Association
- belongs_to :buy