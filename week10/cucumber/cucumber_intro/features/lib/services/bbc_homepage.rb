require 'capybara/dsl'

class BBCHomepage
  include Capybara::DSL

  HOMEPAGE_URL = 'https://www.bbc.co.uk/'
  SIGN_IN_LINK = 'idcta-link'
  SIGN_IN_ID = '#idcta-username'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def sign_in_text
    find(SIGN_IN_ID).text
  end

  def click_sign_in
    click_on(SIGN_IN_LINK)
  end

end
