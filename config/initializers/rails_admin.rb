RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    # authenticate_admin!

    authenticate_or_request_with_http_basic("Application") do |name, password|
      # This comparison uses & so that it doesn't short circuit and
      # uses `variable_size_secure_compare` so that length information
      # isn't leaked.
      ActiveSupport::SecurityUtils.variable_size_secure_compare(name, ENV["RAILS_ADMIN_USERNAME"]) &
        ActiveSupport::SecurityUtils.variable_size_secure_compare(password, ENV["RAILS_ADMIN_PASSWORD"])

    end
  end
  # config.current_user_method(&:current_admin)

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

  config.model Entry do
    list do
      sort_by :points
      field :category
      field :name
      field :points do
        sort_reverse true
      end
    end
  end

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
end

# class ActionController::Base
#   def authenticate_admin!
#
#     authenticate_or_request_with_http_basic("Application") do |name, password|
#       # This comparison uses & so that it doesn't short circuit and
#       # uses `variable_size_secure_compare` so that length information
#       # isn't leaked.
#       ActiveSupport::SecurityUtils.variable_size_secure_compare(name, ENV["RAILS_ADMIN_USERNAME"]) &
#         ActiveSupport::SecurityUtils.variable_size_secure_compare(password, ENV["RAILS_ADMIN_PASSWORD"])
#   end
#
#   end
# end
