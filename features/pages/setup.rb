require_relative 'sign_up'

class Setup
  include PageObject

  page_url BASE_URL+'/account/'

  text_field(:set_first_name, id:'contactinfo_firstname')
  text_field(:set_last_name, id:'contactinfo_lastname')
  text_field(:set_age, id:'contactinfo_age')
  button(:save_info, text:'Save')

  def enter_personal_info
    self.set_first_name = 'Randall'
    self.set_last_name = 'Wyatt'
    self.set_age = '27'
    save_info
  end

end



