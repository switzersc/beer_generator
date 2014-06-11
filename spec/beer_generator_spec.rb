require 'beer_generator.rb'

describe BeerGenerator do 

	it 'should serve beer if beer type exists' do 
		beer = BeerGenerator::Beertender.serve_beer("stout")
		beer.should_not be_nil
	end

	it 'should give response if type doesnt exist' do 
		response = BeerGenerator::Beertender.serve_beer("kldfjf")
		response.should eq(BeerGenerator::Beertender.no_beer_response)
	end

	it 'should give list of beers' do 
		beers = BeerGenerator::Beertender.show_beer_list
		actual_beers = BeerGenerator::Beertender::BEERS.values.flatten
		beers.should eq(actual_beers)
	end

	it 'should return multiple beers' do 
		beers = BeerGenerator::Beertender.serve_beer("stout", 5)

		beers.count.should eq(5)
	end

	it 'should only serve if over 21' do 
		birthday =  Date.today - 7665
		beers = BeerGenerator::Beertender.serve_beer("stout", 1, birthday)

		beers.should_not be_nil
	end

end