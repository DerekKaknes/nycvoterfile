class Rawvoter < ActiveRecord::Base
  has_many :voter_grades

  def local_primary
    self.voter_grades.first.local_primary
  end

  def local_general
    self.voter_grades.first.local_general
  end

  def national_midterm
    self.voter_grades.first.national_midterm
  end

  def national_presidential
    self.voter_grades.first.national_presidential
  end

  def score_w_scaled
    self.voter_grades.first.score_w_scaled
  end

  def score_total_scaled
    self.voter_grades.first.score_total_scaled
  end

  def full_address
    "#{raddnumber} #{rstreetname.strip}, #{rcity} #{rzip5}"
  end

  def name_and_scores
    {
      firstname: firstname,
      lastname: lastname,
      dob: dob,
      sboeid: sboeid,
      local_primary: local_primary,
      local_general: local_general,
      national_midterm: national_midterm,
      national_presidential: national_presidential,
      score_w_scaled: score_w_scaled,
      score_total_scaled: score_total_scaled
    }
  end

end
