json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :amount, :user_id, :retailer_id, :created_at, :updated_at, :approved, :transaction_date, :user_split, :cause_split, :retailer_split, :cause_id
  json.url transaction_url(transaction, format: :json)
end
