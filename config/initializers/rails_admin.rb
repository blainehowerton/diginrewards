RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
  warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.label_methods << :username

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Transaction' do
    edit do
      field :image
      field :status
      field :amount
      field :transaction_date
      field :user
      field :retailer
      field :cause
      field :retailer_split
      field :cause_split
      field :fee_split
    end
  end

  config.model 'User' do
    edit do
      field :username
      field :cause_id
      field :paypalID
      field :address
      field :city
      field :state
      field :zip
      field :phone
      field :password
    end
  end
end
