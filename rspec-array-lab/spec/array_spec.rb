require 'spec_helper'

describe 'working through various arrays' do

  context 'standard 1 dimensional arrays' do
    dog_breeds = ['jack russell', 'boxer', 'bloodhound', 'greyhound']

    it 'the first entry should equal jack russell' do
      expect(dog_breeds.first).to eql("jack russell")
      # Use array methods only
    end

    it 'the last entry should equal greyhound' do
      expect(dog_breeds.last).to eql("greyhound")
      # Use array methods only

    end

    it 'the second entry should equal boxer' do
      expect(dog_breeds[1]).to eql("boxer")
      # Use array index only i.e. array[0]
    end

  end

  context 'test 2 dimensional arrays' do

    dog_breed_and_names = [['jack russell', 'archie'],['boxer', 'bruce'],['bloodhound', 'droopy'], ['greyhound', 'streak']]

    it 'the first dog name should equal archie' do
      expect(dog_breed_and_names.first[1]).to eql("archie")
      # Use a mix of array methods and indexes
    end

    it 'the second last entry should be a bloodhound called droopy' do
      expect(dog_breed_and_names[2][1]).to eql("droopy")
      # Use array index only i.e. array[0]
    end

    it 'the second entry should be a boxer' do
      expect(dog_breed_and_names[1][0]).to eql("boxer")
      # Use array index only i.e. array[0]
    end

  end

  context 'test multidimensional arrays' do
    dog_breed_names_age_and_health = [['jack russell', 'archie',[4, 'healthy']],['boxer', 'bruce',[7,'bad back']],['bloodhound', 'droopy', [6, 'healthy']], ['greyhound', 'streak',[12, 'old dog']]]

    it 'the last dog should be called streak and is an old dog' do
      expect(dog_breed_names_age_and_health.last[1]).to eql("streak")
      expect(dog_breed_names_age_and_health.last.last.last).to eql("old dog")
      # Use a mix of array methods and indexes

    end

    it 'the bloodhound should be 6 years old and healthy' do
      expect(dog_breed_names_age_and_health[2].last[0]).to eql(6)
      expect(dog_breed_names_age_and_health[2].last.last).to eql("healthy")
      # Use a mix of array methods and indexes
    end

    it 'the first dog should be a jack russell and 4 years old' do
      expect(dog_breed_names_age_and_health[0].last.last).to eql("healthy")
      # Use array index only i.e. array[0]
    end

  end

end
