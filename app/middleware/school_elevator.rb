class SchoolElevator < Apartment::Elevators::Generic

  # @return {String} - the tenant to switch to
  def parse_tenant_name(request)
    session = request.session
    user = session[:user]

    if user.nil?
      ActiveRecord::Base.connection.current_database
    else
      SchoolElevator.tenant(user[:school_id])
    end
  end

  def self.tenant(school_id)
    unless Rails.env == 'production'
      "school_#{school_id}_#{Rails.env}"
    else
      "school_#{school_id}"
    end
  end
end
