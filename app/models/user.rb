class User < ActiveRecord::Base
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
end
