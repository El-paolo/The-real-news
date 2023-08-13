class ApplicationController < ActionController::Base
    def authorize_request(kind=nil)
        if(current_user.nil?)
            redirect_to reports_path, notice: 'You are not authorized to perform this action'
        else
        unless kind.include?(current_user.role)
            redirect_to reports_path, notice: 'You are not authorized to perform this action'
        end
    end
    end
end
