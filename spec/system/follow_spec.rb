require 'rails_helper'
RSpec.describe 'フォロー及びメッセージ機能テスト', type: :system do
  before do
    FactoryBot.create(:playground)
    FactoryBot.create(:second_user)
    visit new_session_path
    fill_in 'Email', with:'test2@example.com'
    fill_in 'Password', with: 'password02'
    click_on 'Log in'
    visit root_path
    click_on 'Details'
    click_on 'Playground User'
  end
    context '他ユーザー画面からフォロー・メッセージ機能が使用できる' do
      it '他ユーザー画面からメッセージを送る' do
        click_on 'To send message'
        fill_in 'message_body', with: 'こんにちは！'
        click_on 'Send a message'
        sleep(0.5)
        expect(page).to have_content 'こんにちは！'
      end

      it '遊び場詳細画面からドッグラン登録者をフォローする' do
        sleep(0.5)
        click_on 'Follow'
        click_on 'My page'
        expect(page).to have_content 'うえき'
      end
  end
end
