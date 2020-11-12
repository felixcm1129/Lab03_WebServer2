# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_22_143553) do

  create_table "ingredients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nom"
    t.string "unite_defaut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recette_ingredients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "recette_id"
    t.bigint "ingredient_id"
    t.decimal "quantite", precision: 5, scale: 2
    t.string "unite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_recette_ingredients_on_ingredient_id"
    t.index ["recette_id"], name: "index_recette_ingredients_on_recette_id"
  end

  create_table "recettes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.string "titre"
    t.text "etapes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_recettes_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "recette_ingredients", "ingredients"
  add_foreign_key "recette_ingredients", "recettes"
  add_foreign_key "recettes", "users"
end
