module UsersHelper

    def username(user)
        user.email.split('@')[0]
    end

end
