class SchoolElevator < Apartment::Elevators::Generic

  # @return {Stringhas_secure_password} - the tenant to switch to
  def parse_tenant_name(request)
    session = request.session
    user = session[:user]
    Rails.logger.info "elevator user #{user}"

    suffix = unless Rails.env == 'production'
               Rails.env
             else
               ''
             end
    Rails.logger.info "school_#{user[:school_id]}_#{suffix}"
    return "school_#{user[:school_id]}_#{suffix}"
  end
end
