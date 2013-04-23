class Parent < ActiveRecord::Base
  attr_accessible :child_grade, :child_subject1, :child_subject2, :child_subject3, :email, :first_name, :gender, :last_name, :session_fee, :zip_code

  before_save { |parent| parent.email = email.downcase }

  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  # VALID_ZIP_CODE_REGEX = ^\d{5}$
  # validates :zip_code, presence: true, 
  # 					   format:     { with: VALID_ZIP_CODE_REGEX }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :child_grade, presence: true
  validates :child_subject1, presence: true
  validates :gender, presence: true
  validates :session_fee, presence: true
end
