module UsersHelper

    def username(user)
        user.email.split('@')[0]
    end

    def total_purchase_money(user)
        user.purchases.map(&:purchased_price).inject(0, &:+)
    end

end
