require 'capybara'

class BBC

  HOMEPAGE_URL = 'http://www.bbc.co.uk/'

  def initialize
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end

    # tell it what browser we would like to use it in, i.e. in this case, chrome
    @session = Capybara::Session.new(:chrome)
  end

  def visit_homepage
    @session.visit(HOMEPAGE_URL)
  end

  def button_selector selector
    @session.find(:css, selector).click
  end

  def form_input selector, input
    @session.fill_in selector, with: input
  end

  def button_selector_within selector1, selector2
    @session.within(:css, selector1) do
      @session.click_link(selector2)
      sleep 1
    end
  end

  def button_all_select selector1, selector2
    @session.all(:css, selector1).each
  end

  def button_click_on selector
    @session.click_on(selector)
  end

  def button_selector_within_click_on selector1, selector2
    @session.within(:css, selector1) do
      @session.click_on(selector2)
    end
  end

end

# testcase = BBC.new
# testcase.visit_homepage
# testcase.button_selector("#idcta-link")
# sleep 2

# testcase = BBC.new
# testcase.visit_homepage
# testcase.button_selector("#idcta-link")
# testcase.form_input('user-identifier-input', 'Rhys')
# testcase.form_input('password-input', 'Password123')
# sleep 2

# testcase = BBC.new
# testcase.visit_homepage
# testcase.button_selector_within('.orb-nav', 'Sport')
# testcase.button_selector("#sp-nav-all-sport-button")
# testcase.button_selector_within_click_on(".sp-c-sport-flyout__inner", "Football")
sleep 2
