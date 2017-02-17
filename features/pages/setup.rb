require_relative 'sign_up'

class Setup
  include PageObject

  page_url BASE_URL+'/account/'

  text_field(:set_first_name, id:'contactinfo_firstname')
  text_field(:set_last_name, id:'contactinfo_lastname')
  text_field(:set_age, id:'contactinfo_age')
  select(:birth_month, id:'id_birth_date_month', value:'10')
  select(:birth_day, id:'id_birth_date_day', value:'25')
  select(:birth_year, id:'id_birth_date_year', value:'1989')
  button(:save_info, text:'Save')

  def enter_personal_info
    self.set_first_name = 'Randall'
    self.set_last_name = 'Wyatt'
    self.birth_month = 'October'
    self.birth_day = 25
    self.birth_year = 1989
    self.set_age = '27'
    save_info
  end

end



