require 'rails_helper'

RSpec.describe "UserPages", type: :system do
  let(:user) { create(:user) }

  before { login(user) }

  it 'ユーザーページが表示されること' do
    visit userpages_path

    expect(page).to have_content("#{user.username} さんのページ")

    expect(page).to have_link("トップページに戻る", href: root_path)
    expect(page).to have_link("ポジティブワードを知る", href: positive_words_path)
    expect(page).to have_button("ログアウト")

    # ログアウトボタンをクリック
    click_button "ログアウト"
    expect(page).to have_current_path(root_path)# ログアウト後トップページへ
    expect(page).to have_content("Signed out successfully.")
  end
end
