class Student < ActiveRecord::Base
  attr_accessible :email, :first_name, :grade, :last_name, :subject1, :subject2, :subject3, :zip_code, :gender


  before_save { |student| student.email = email.downcase }

  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  # validates :zip_code, format: {with: RubyRegex::ZIPCode}
  # validates_format_of :zip_codeß, with: RubyRegex::ZIPCode
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :grade, presence: true
  validates :subject1, presence: true
  validates :gender, presence: true
end