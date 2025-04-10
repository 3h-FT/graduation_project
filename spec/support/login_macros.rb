require 'rails_helper'

module LoginMacros
    def login(user)
      visit new_user_session_path
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
      click_button 'ログイン'
    end
end
