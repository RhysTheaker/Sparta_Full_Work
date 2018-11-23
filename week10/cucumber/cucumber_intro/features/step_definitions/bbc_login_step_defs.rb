valid_username = 'rwhitehouse@spartaglobal.com'
valid_password = 'Password123'

Given("I access the bbc login page") do
  bbc_homepage.visit_homepage
  bbc_homepage.click_sign_in
  expect(current_url).to eq 'https://account.bbc.com/signin'
end

When("I enter a correct username") do
  bbc_login_page.input_user(valid_username)
  expect(find('#user-identifier-input').value).to eq valid_username
end

When("I enter a correct password") do
  bbc_login_page.input_password(valid_password)
  expect(find('#password-input').value).to eq valid_password
end

When("I click submit") do
  bbc_login_page.click_log_in
end

Then("I am logged in and redirected to the homepage") do
  expect(current_url).to eq 'https://www.bbc.co.uk/'
  expect(find_link('idcta-link').text).to eq 'Your account'
end

Then("I will see errors for blank details") do
  expect(all('.form-message__text')[0].text).to eq bbc_login_page.matching_error_message

  expect(all('.form-message__text')[1].text).to eq bbc_login_page.missing_details_error

  expect(all('.form-message__text')[2].text).to eq bbc_login_page.missing_details_error
end
