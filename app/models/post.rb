class Post < ApplicationRecord

  validates :title, presence: true
  validates :start, presence: true
  validates :finish, presence: true
  validates :memo, length: {maximum:5}

  validate :start_finish_check
 
  def start_finish_check
      if self.finish < self.start
       errors.add(:finish, "は開始日より前の日付は登録できません。") 
      end
  end

end



   
=begin 

       validate :start_end_check
 
    def start_finish_check
        if self.finish < self.start
         errors.add(:finish, "は開始日より前の日付は登録できません。") 
        end
    end




    validates :title, presence: true
    validates :start, presence: true
    validates :finish, presence: true
    validates :memo, length: {maximum:5}

    def start_end_check
      if start.present? && finish.present? && start >= finish
       errors.add(:finish, "は開始日より前の日付は登録できません。") 
      end
    end

    def startday
      if start.present? && finish.present? && start > Date.today
      errors.add(:start, "は今日以降のものを選択してください") 
      end
    end 
=end


