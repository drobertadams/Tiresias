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

ActiveRecord::Schema.define(version: 20170321172855) do

  create_table "authors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.integer  "work_id"
    t.integer  "author_id"
    t.string   "isbn"
    t.string   "oclc"
    t.string   "edition"
    t.integer  "translator_id"
    t.integer  "language_id"
    t.boolean  "is_prose"
    t.boolean  "is_poetry"
    t.integer  "publication_year"
    t.integer  "collection_id"
    t.text     "notes",            limit: 65535
    t.integer  "medium_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "approved"
    t.integer  "entry_id"
    t.boolean  "needs_approval"
    t.integer  "editor_id"
    t.index ["author_id"], name: "index_submissions_on_author_id", using: :btree
    t.index ["collection_id"], name: "index_submissions_on_collection_id", using: :btree
    t.index ["editor_id"], name: "fk_rails_af4fb4a597", using: :btree
    t.index ["entry_id"], name: "index_submissions_on_entry_id", using: :btree
    t.index ["language_id"], name: "index_submissions_on_language_id", using: :btree
    t.index ["medium_id"], name: "index_submissions_on_medium_id", using: :btree
    t.index ["translator_id"], name: "index_submissions_on_translator_id", using: :btree
    t.index ["work_id"], name: "index_submissions_on_work_id", using: :btree
  end

  create_table "translators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "role"
  end

  create_table "works", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "submissions", "authors"
  add_foreign_key "submissions", "languages"
  add_foreign_key "submissions", "media"
  add_foreign_key "submissions", "translators"
  add_foreign_key "submissions", "users", column: "editor_id"
  add_foreign_key "submissions", "users", column: "entry_id"
  add_foreign_key "submissions", "works"
end
