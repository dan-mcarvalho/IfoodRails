class ApplicationController < ActionController::API
 
    def current_user
        if decoded.present?
            User.find_by(id: decoded["user_id"])
        end
    end

    def decoded
        if auth_token.present?
            decoded_array =JsonWebToken.decode(auth_token)[0]
            return decoded_array[0]
        else
            return nil
        end
    
    end

    def auth_token
        token = request.headers{"Authorization"} 
        return nil if token.nil? 
        token.split(" ").last
    end
end
