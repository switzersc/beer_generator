require 'beer_generator.rb'

describe BeerGenerator do 
	
	let(:beertender) { BeerGenerator::Beertender }

	context "user is old enough" do 

		let(:birthday) { Date.today - 7665 }

		it 'should serve beer if beer type exists' do 
			beer = beertender.serve_beer("stout", birthday)
			beer.should_not be_nil
		end

		it 'should give response if type doesnt exist' do 
			response = beertender.serve_beer("kldfjf", birthday)
			response.should eq(beertender.no_beer_response)
		end

		it 'should give list of beers' do 
			beers = beertender.show_beer_list
			actual_beers = beertender::BEERS.values.flatten
			beers.should eq(actual_beers)
		end

		it 'should return multiple beers' do 

			beers = beertender.serve_beer("stout", birthday, 5)

			beers.count.should eq(5)
		end

	end

	context "user not old enough" do 
		let(:invalid_birthday) { Date.today - 6000 }

		it 'should not serve beer if user is not old enough' do 
			beer = beertender.serve_beer("stout", invalid_birthday)
			beer.should eq(beertender.not_old_enough_response)
		end

	end

end