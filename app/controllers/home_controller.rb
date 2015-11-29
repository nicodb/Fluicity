class HomeController < ApplicationController
  Role = Struct.new(:text, :value)

  def index
    prepare_user
  end

  def thanks

  end

  def contact
    prepare_user

  end

  def press
    @article = YAML.load_file(Rails.root.join('db/press.yml')).with_indifferent_access
  end

  def team
    @team = YAML.load_file(Rails.root.join('db/team.yml')).with_indifferent_access
  end

  def prepare_user
    @user = User.new
    @roles = [
      Role.new( I18n.translate('contact.select.firstoption') , "citizen"),
      Role.new( I18n.translate('contact.select.secondoption') , "representative"),
      Role.new(I18n.translate('contact.select.thirdoption') , "organization")
    ]

  end

end



