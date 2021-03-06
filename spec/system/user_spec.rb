require 'rails_helper'

RSpec.describe 'user', type: :system do
  context 'ユーザー新規登録テスト' do
    it 'ユーザー登録成功' do
      visit new_user_path
        fill_in '名前', with: 'test_1'
        fill_in 'メールアドレス', with: 'test_1@gmail.com'
        fill_in 'パスワード', with: 'password'
        fill_in '確認用パスワード', with: 'password'
        attach_file 'Image', "#{Rails.root}/db/seed_fixtures/oya.jpg"
        click_button 'Create my account'
        expect(page).to have_content 'New User register login!'

      end
    it 'ユーザー登録失敗（氏名未入力）' do
      visit new_user_path
      fill_in '名前', with: ''
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'password'
      attach_file 'Image', "#{Rails.root}/db/seed_fixtures/oya.jpg"
      click_button 'Create my account'
      expect(page).to have_content '名前を入力してください'
    end

    it 'ユーザー登録失敗（パスワード未入力）' do
      visit new_user_path
      fill_in '名前', with: 'test_1'
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: ''
      fill_in '確認用パスワード', with: 'password'
      attach_file 'Image', "#{Rails.root}/db/seed_fixtures/oya.jpg"
      click_button 'Create my account'
      expect(page).to have_content 'パスワードを入力してください'
    end

    it 'カスタマー登録失敗（確認用パスワードが異なる）' do
      visit new_user_path
      fill_in '名前', with: 'test_1'
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'passwordsssss'
      attach_file 'Image', "#{Rails.root}/db/seed_fixtures/oya.jpg"
      click_button 'Create my account'
      expect(page).to have_content '確認用パスワードとパスワードの入力が一致しません'
    end
  end

  context 'ログインテスト' do
    before do
      FactoryBot.create(:user)
    end
    it 'パスワード変更' do
      visit new_session_path
      fill_in 'Email', with: 'customer1@email.com'
      fill_in 'Password', with: 'password'
      click_button 'Log in'
      click_on 'My page'
      sleep(1)
      click_on 'Edit profile'
      fill_in 'パスワード', with: 'passpass'
      fill_in '確認用パスワード', with: 'passpass'
      click_button 'Create my account'
      sleep(1)
      expect(page).to have_content 'I edited my profile！'
    end

    it 'メールアドレス変更' do
      visit new_session_path
      sleep(1)
      fill_in 'Email', with: 'customer1@email.com'
      fill_in 'Password', with: 'password'
      click_button 'Log in'
      click_on 'My page'
      click_on 'Edit profile'
      fill_in 'メールアドレス', with: 'update_mail@gmail.com'
        click_button 'Create my account'
      sleep(1)
      expect(page).to have_content 'I edited my profile！'
    end

    it 'ログイン成功' do
      visit new_session_path
      fill_in 'Email', with: 'customer1@email.com'
      fill_in 'Password', with: 'password'
      click_button 'Log in'
      expect(page).to have_content 'Has been Login！'
    end

    it 'ログイン失敗（メールアドレスが違う）' do
      visit new_session_path
      fill_in 'Email', with: 'test2@gmail.com'
      fill_in 'Password', with: 'password'
      click_button 'Log in'
      expect(page).to have_content 'Login Failed！'
    end

    it 'ログイン失敗（パスワードが違う）' do
      visit new_session_path
      fill_in 'Email', with: 'customer1@email.com'
      fill_in 'Password', with: 'passwordpassword'
      click_button 'Log in'
        expect(page).to have_content 'Login Failed！'
    end

    it 'ログアウト成功' do
      visit new_session_path
      fill_in 'Email', with: 'customer1@email.com'
      fill_in 'Password', with: 'password'
      click_button 'Log in'
      click_on 'Logout'
      sleep(1)
      expect(page).to have_content 'Has been logout！'
    end

  end
end
