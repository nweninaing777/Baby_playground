
require 'rails_helper'
RSpec.describe 'マイ赤ちゃん新規登録テスト', type: :system do
 before do
   FactoryBot.create(:myakachan)
   visit new_session_path
   fill_in 'Email', with: 'customer1@email.com'
   fill_in 'Password', with: 'password'
   click_on 'Log in'
   click_on 'My page'
 end
 context 'マイドッグ新規登録成功' do
   it '作成済みのマイドッグが表示されること' do
     expect(page).to have_content 'ミルク'
   end

     it 'マイ赤ちゃん詳細画面に遷移' do
       click_on 'Edit'
       fill_in 'Name', with: 'rose'
       fill_in 'Age', with: '11'
          click_on '更新する'
       expect(page).to have_content 'rose'
     end

     it 'マイ赤ちゃんを編集' do
       click_on 'Edit'
       fill_in 'Age', with: '5'
       click_on '更新する'
       expect(page).to have_content '5'
     end
 end
end
