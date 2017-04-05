RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

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


config.model CoreTrackerTemplate do
    list do
      field :location_code do
      end
    field :location_name do
      end
    field :location_grade do
      end
    field :location_type do
      end
    field :region do
      end
    #field :default_wh do
     # end
    field :brand_name do
      end
    field :group_name do
      end
    field :dept_name do
      end
    field :category do
      end
    #t.string :sub_cat
    #t.string :made_up_desc
    t.string :style do
      end
    t.string :color do
      end
    t.integer :sizee do
      end
    #t.integer :mrp
    t.string :item_code do
      end
    #t.string :ean_code
    #t.integer :base_stock
    field :soh do
      end
    field :arp_max do
      end
    #t.integer :available_qty
    #t.integer :intransit_qty
    #t.integer :tsf_expected_qty
    #t.integer :distro_qty
    #t.integer :alloc_non_grn
    field :open_po do
      end
    #t.integer :cy_saleqty
    #t.integer :py_saleqty
    #t.integer :cy_salevalue
    #t.integer :py_salevalue
    #t.integer :cy_mrp_salevalue
    #t.integer :py_mrp_salevalue
    field :last_180days_saleqty do
      end


  end
end



end
