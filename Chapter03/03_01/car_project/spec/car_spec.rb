require 'car'

describe 'Car' do
    
  describe 'attributes' do
      
    it "allows reading and writing for :make" do
     car = Car.new
     car.make = 'Test'
     expect(car.make).to eq('Test')
    end
    
    it "allows readubg and writing for :year" do
     car = Car.new
     car.year = 1999
     expect(car.make).to eq(1999)
    end
    
    it "allows reading and writing for :color" do
     car = Car.new
     car.color = "foo"
     expect(car.color).to eq('foo')
    end
    
    it "allows reading for :wheels" do
     car = Car.new
     expect(car.wheels).to eq(4)
    end
    
    
    
  describe '.colors' do
   it "returns an array of color names" do
    a = ['blue', 'black', 'red', 'green']
    expect(Car.colors).to eq(a)   
  end
  
  describe '#full_name' do
    it "returns a string in the expected format" do
        @honda = Car.new(:make => 'Honda', :year => 2004, :color 'blue')
        expect(@honda.full_name).to eq('2004 Honda (blue)')
    end
    
    context 'when initialized with no arguments' do
        it 'return a string using default values' do
            car = Car.new
            expect(car.full_name).to eq('2007 Volvo (unknown)')
        end
    end