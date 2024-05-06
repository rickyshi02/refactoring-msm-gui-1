# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord

  def filmography
    the_id = self.id

    matching_movies = Movie.where({ :director_id => the_id })

    return films = matching_movies.order({ :year => :asc })
  end

end
