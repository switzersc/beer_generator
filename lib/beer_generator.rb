require "beer_generator/version"

module BeerGenerator
  # Your code goes here...

	class Beertender
	  
	  BEERS = {
	  	lager: ["Coors", "Miller", "Yuengling"],
	  	stout: ["Guiness", "Nitro Milk Stout"],
	  	ipa: ["Sweetwater", "Red Hook", "Fat Tire"]
	  }

	  def self.serve_beer(beer_type, number=1, birthday)
	  	if birthday < (Date.today - 7665)
		  	beers = BEERS[beer_type.to_sym]
		  	if beers
		  		Array.new(number, beers.sample)
		  	else
		  		no_beer_response
		  	end
		  else
		  	not_old_enough_response
		  end
	  end

	  def self.not_old_enough_response
	  	"Sorry kid."
	  end

	  def self.no_beer_response
	  	"We ain't got that kind of beer."
	  end

	  def self.show_beer_list
	  	BEERS.values.flatten
	  end

	end

end
