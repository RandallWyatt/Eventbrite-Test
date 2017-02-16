require_relative 'account'

class SignUp
  include PageObject

  page_url BASE_URL

  link(:sign_up, class: 'header-link gh-signup primary-link js-d-track-link js-modal-auth show-large')
  text_field(:email, id:'signup-email')
  text_field(:password, id:'signup-password')
  button(:sign_up_button, value:'Sign up')
  link(:close_button, class:'js-eb-lightbox__close onboarding-lightbox__close')

  def sign_up_link
    sign_up
  end

  def enter_information
    self.email = 'randy.wyatt@example.com'
    self.password = 'P4ssw0rd'
    sign_up_button_element.click
    close_button
  end


end