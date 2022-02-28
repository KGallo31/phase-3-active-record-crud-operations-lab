class Movie < ActiveRecord::Base

    def self.create_with_title(name)
        Movie.create(title: name)
    end

    def self.first_movie
        return Movie.first
    end

    def self.last_movie
        return Movie.last
    end

    def self.movie_count
        return Movie.count
    end

    def self.find_movie_with_id(id)
        return Movie.find(id)
    end

    def self.find_movie_with_attributes(attribute)
        return Movie.find_by(attribute)
    end

    def self.find_movies_after_2002
        return Movie.where("release_date > '2002'")
    end

    def update_with_attributes(attribute)
        self.update(attribute)
    end

    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    def self.delete_by_id(id)
        Movie.destroy(id)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end

end