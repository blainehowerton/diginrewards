class CreateStructure < ActiveRecord::Migration
  def change
    create_table "admins"
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cause_transactions"
    t.string   "cause_id"
    t.date     "date"
    t.integer  "transaction_id"
    t.decimal  "credit_amount",  precision: 10, scale: 2
    t.decimal  "debit_amount",   precision: 10, scale: 2
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "memo"
    t.string   "status"
  end

  create_table "causes"
    t.string   "name"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "paypalID"
    t.string   "contact_email"
    t.string   "address"
    t.string   "city"
    t.string   "state",         limit: 2
    t.string   "zip",           limit: 5
    t.string   "phone",         limit: 10
    t.integer  "split"
  end

  create_table "defaults"
    t.decimal  "cause_split",    precision: 5, scale: 2, default: 0.03, null: false
    t.decimal  "retailer_split", precision: 5, scale: 2, default: 0.03, null: false
    t.decimal  "fee_split",      precision: 5, scale: 2, default: 0.09, null: false
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "retailer_transactions"
    t.string   "retailer_id"
    t.date     "date"
    t.integer  "transaction_id"
    t.decimal  "credit_amount",  precision: 10, scale: 2
    t.decimal  "debit_amount",   precision: 10, scale: 2
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "memo"
    t.string   "status"
  end

  create_table "retailers"
    t.string   "name"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "paypalID"
    t.string   "address"
    t.string   "city"
    t.string   "state",         limit: 2
    t.string   "zip",           limit: 5
    t.string   "phone",         limit: 10
    t.string   "contact_email"
    t.decimal  "fee_split",                precision: 5, scale: 2
    t.decimal  "cause_split",              precision: 5, scale: 2
    t.decimal  "user_split",               precision: 5, scale: 2
  end

  create_table "rewards_transactions"
    t.date     "date"
    t.integer  "transaction_id"
    t.decimal  "credit_amount",  precision: 10, scale: 2
    t.decimal  "debit_amount",   precision: 10, scale: 2
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "memo"
    t.string   "retailer_id",                             null: false
  end

  create_table "transactions"
    t.decimal  "amount",             precision: 10, scale: 2
    t.integer  "user_id"
    t.integer  "retailer_id"
    t.datetime "created_at",                                                           null: false
    t.datetime "updated_at",                                                           null: false
    t.date     "transaction_date"
    t.integer  "cause_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.decimal  "fee_split",          precision: 5,  scale: 2
    t.decimal  "retailer_split",     precision: 5,  scale: 2
    t.decimal  "cause_split",        precision: 5,  scale: 2
    t.string   "status",                                      default: "Not Reviewed", null: false
  end

  create_table "user_transactions"
    t.string   "user_id"
    t.date     "date"
    t.integer  "transaction_id"
    t.decimal  "credit_amount",  precision: 10, scale: 2
    t.decimal  "debit_amount",   precision: 10, scale: 2
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "memo"
    t.string   "status"
  end

  create_table "users"
    t.string   "username"
    t.integer  "cause_id"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "paypalID"
    t.string   "address"
    t.string   "city"
    t.string   "state",                  limit: 2
    t.string   "zip",                    limit: 5
    t.string   "phone",                  limit: 10
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

    end
  end
end
