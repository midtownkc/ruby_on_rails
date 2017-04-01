class Profile < ActiveRecord::Base
  belongs_to :user

  validate :first_name_or_last_name
  validate :male_or_female
  validate :boy_sue

  def first_name_or_last_name
    if (first_name == nil) && (last_name == nil)
      errors.add(:first_name, "First name and last name cannot both be nil")
    end
  end

  def male_or_female
    if (gender != "male") && (gender != "female")
      errors.add(:gender, "Must choose Male or Female.")
    end
  end

  def boy_sue
    if (gender == "male") && (first_name == "Sue")
      errors.add(:gender, "Cannot be a cliche' Johnny Cash Song.")
    end
  end

  def self.get_all_profiles(min_year, max_year)
  	Profile.where("birth_year BETWEEN ? AND ?", min_year, max_year).order(birth_year: :asc)
  end

end
