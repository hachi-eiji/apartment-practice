class SchoolElevator < Apartment::Elevators::Generic

  # @return {String} - the tenant to switch to
  def parse_tenant_name(request)
    session = request.session
    user = session[:user]

    if user.nil?
      ActiveRecord::Base.connection.current_database
    else

    suffix = unless Rails.env == 'production'
               Rails.env
             else
               ''
             end
    return "school_#{user[:school_id]}_#{suffix}"
    end

  end
end
