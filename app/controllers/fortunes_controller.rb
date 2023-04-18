class FortunesController < ApplicationController

  def horoscopes

    all_zodiacs = Zodiac.list
    @sign = params.fetch("the_sign")
    sym_sign = @sign.to_sym
    this_zodiac = all_zodiacs.fetch(sym_sign)
    @horoscope = this_zodiac.fetch(:horoscope)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end
    
    render({ :template => "horoscope_template/all_horoscopes.html.erb"})
    
  end

end
