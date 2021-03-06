# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180413121239) do

  create_table "attrezzos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "nome"
    t.text "descrizione"
    t.float "costo_carburante", limit: 24
    t.float "deperimento", limit: 24
    t.float "consumo", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caricos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "id_prodotto"
    t.float "quantit", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cat_coltures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "nome"
    t.text "descrizione"
    t.integer "id_parent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cat_prodottos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "nome"
    t.text "descrizione"
    t.integer "id_prarent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colturas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "nome"
    t.float "estensione_ha", limit: 24
    t.integer "id_cat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operazione_trattamentos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "id_operazione"
    t.integer "id_trattamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operaziones", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "nome"
    t.text "descrizione"
    t.float "per_ha", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operaziones_cat_coltures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "id_operazione"
    t.integer "id_cat_coltures"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prezzos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date "data"
    t.integer "id_prodotto"
    t.float "prezzo_fattura", limit: 24
    t.float "sconto", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prodotto_trattamentos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "id_prodotto"
    t.integer "id_trattamento"
    t.float "dose_ha", limit: 24
    t.text "avvesit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prodottos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "nome"
    t.text "avversit"
    t.integer "id_cat"
    t.text "principio_attivo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prodottos_operaziones", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "id_prodotto"
    t.integer "id_operaziones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trattamentos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date "data"
    t.integer "id_coltura"
    t.integer "id_attrezzo"
    t.text "avversit"
    t.boolean "semina"
    t.boolean "trapianto"
    t.boolean "fioritura"
    t.boolean "raccolta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
