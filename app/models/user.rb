class User < ActiveRecord::Base
  has_many :activities

  def status_to_str
    case self.status
    when 0
      '帰宅'
    when 1
      '実験中'
    when 2
      '離席'
    end
  end

  def lab
    self.activities.create!(activity_type: 1)
    self.status = 1
    self.save!
  end

  def home
    self.activities.create!(activity_type: 0)
    self.status = 0
    self.save!
  end

  def out
    self.activities.create!(activity_type: 2)
    self.status = 2
    self.save!
  end
end
