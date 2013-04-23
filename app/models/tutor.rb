class Tutor < ActiveRecord::Base
  attr_accessible :email, :first_name, :gender, :grade, :last_name, :session_fee, :subject1, :subject2, :subject3, :zip_code


  before_save { |tutor| tutor.email = email.downcase }

  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  # VALID_ZIP_CODE_REGEX = ^\d{5}$
  # validates :zip_code, presence: true, 
  # 					   format:     { with: VALID_ZIP_CODE_REGEX }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :grade, presence: true
  validates :subject1, presence: true
  validates :gender, presence: true
  validates :session_fee, presence: true
end
