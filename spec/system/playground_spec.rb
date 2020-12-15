require 'rails_helper'
RSpec.describe '遊び場検索及び画面遷移テスト', type: :system do
  before do
    FactoryBot.create(:playground)
    visit new_session_path
    fill_in 'Email', with: 'customer1@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log in'
    click_on 'My page'
    visit root_path
  end

  context '遊び場詳細画面' do
    it '住所から検索' do
      fill_in 'q_address_cont', with: '東京'
      expect(page).to have_content '東京'
    end


    it '遊び場詳細画面からドッグラン登録者の詳細情報に遷移' do
      click_on '検索'
      click_on 'Details'
      expect(page).to have_content 'うえき'
    end

    it 'ログインしていれば、口コミが投稿できる' do
      click_on 'Details'
      fill_in 'post_title', with: '都心とは思えない！'
      fill_in 'post_content', with: '広いです！'
      click_on '登録する'
      expect(page).to have_content '都心とは思えない！'
    end
  end
end
