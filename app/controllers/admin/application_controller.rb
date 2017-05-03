
module Admin
  def self.admin_types
    ['AdminUser']
  end
  
  class ApplicationController < Administrate::ApplicationController
    before_filter :authenticate_admin

    def authenticate_admin
      unless Admin.admin_types.include?(current_user.try(:type))
        flash[:alert] = "You are not authorized to access this page"
        redirect_to(root_path)
      end
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end
