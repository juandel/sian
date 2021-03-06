# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140326142445) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "documents", :force => true do |t|
    t.integer  "property_id"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "images", :force => true do |t|
    t.integer  "viewable_id"
    t.string   "viewable_type",     :limit => 50
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "position"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.boolean  "cover",                           :default => false
  end

  add_index "images", ["viewable_id"], :name => "index_images_on_viewable_id"
  add_index "images", ["viewable_type"], :name => "index_images_on_viewable_type"

  create_table "newsletters", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "apellido"
    t.string   "email",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "properties", :force => true do |t|
    t.string   "name"
    t.string   "url_name"
    t.text     "description"
    t.integer  "neighborhood_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "public_address"
    t.integer  "covered_square_meters"
    t.integer  "uncovered_square_meters"
    t.integer  "rooms"
    t.integer  "bathrooms"
    t.text     "amenities"
    t.string   "keywords"
    t.boolean  "for_rent"
    t.boolean  "for_sale"
    t.datetime "created_at",                                                            :null => false
    t.datetime "updated_at",                                                            :null => false
    t.decimal  "sale_price",              :precision => 10, :scale => 0
    t.decimal  "rent_price",              :precision => 10, :scale => 0
    t.string   "type_of_property"
    t.string   "country"
    t.string   "type_of_operation"
    t.integer  "toilette"
    t.string   "ubicacion_en_planta"
    t.string   "estado"
    t.string   "luminosidad"
    t.string   "categoria"
    t.integer  "pisos"
    t.text     "ambientes"
    t.string   "agua_caliente"
    t.string   "calefaccion"
    t.string   "aire_acondicionado"
    t.text     "puntos_interes"
    t.string   "location"
    t.string   "code"
    t.text     "ambientes_en"
    t.text     "puntos_interes_en"
    t.text     "property_description_en"
    t.text     "property_amenities_en"
    t.string   "property_keywords_en"
    t.string   "price"
    t.integer  "prioridad",                                              :default => 1
    t.string   "state"
  end

  add_index "properties", ["neighborhood_id"], :name => "index_images_on_neighborhood_id"

end
