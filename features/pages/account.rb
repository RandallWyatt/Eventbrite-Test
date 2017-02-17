class Account
  include PageObject

  page_url BASE_URL+'/account/'

  link(:account_settings_link, class:'js-d-track-link')
  link(:close_account, text:'Close Account')
  radio(:other_radio, id:'other')
  text_field(:reason, name:'reason_desc')
  text_field(:close_text, id:'close')
  text_field(:password_to_close, id:'passwd')
  button(:close_account_button, value:'Close Account')


  def close_account_action
    close_account
    other_radio_element.select
    self.reason = 'testing'
    self.close_text = 'CLOSE'
    self.password_to_close = 'P4ssw0rd'
    close_account_button
  end
  def should_contain_text(text)
    wait_until(5,"#{text} failed to appear"){
      self.text.include? text
    }
  end
end