require 'dotenv/load'

class Sean
  attr_reader :age
  BIRTHDAY = "09/06"

  def initialize
    @age = 0
  end

  def ask_how_he_feels_about_TDD
    true
  end

  def birthday
    raise 'not today! abort mission!' unless its_his_birthday_today?

    update_age
    its_his_birthday_today?
  end

  private

  def date_now
    Time.now.strftime("%d/%m")
  end

  def its_his_birthday_today?
    date_now == BIRTHDAY
  end

  def update_age
    @age = Time.now.year - ENV['YEAR'].to_i
  end

end