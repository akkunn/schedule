class Post < ApplicationRecord
  validates :title, presence: true
  validates :start, presence: true
  validates :finish, presence: true
  validates :memo, length: {in: 1..140}

  validate :date_before_start
  validate :date_before_end

  private

  require "date"


  def date_before_start
    if start < Date.today
      errors.add(:start, "は今日以降の日付を選択してください")
    end
  end

  def date_before_end
    if finish < start || finish < Date.today
      errors.add(:finish, "は開始日以降の日付を選択してください")
    end
  end




end

