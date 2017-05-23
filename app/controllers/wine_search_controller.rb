require 'open-uri'

class WineSearchController < ApplicationController
  def wine_search_form
    # Nothing to do here.
    render("wine_search_form.html.erb")
  end

  def search_to_results
    @wine_search = params[:user_wine_search]

    # ==========================================================================
    # Your code goes below.
    #
    # The street address that the user typed is in the variable @street_address.
    # ==========================================================================

    url = "http://api.snooth.com/wines/?akey=4ki3im2n32x688cqwnb8onkpuwmvxo9yi3pbz4qrtmd9nmwt&ip=66.28.234.115&q=#{@wine_search}&xp=30"

    parsed_data = JSON.parse(open(url).read)


    @winename1 = parsed_data["wines"][0]["name"]
    @winery1 = parsed_data["wines"][0]["winery"]
    @varietal1 = parsed_data["wines"][0]["varietal"]
    @year1 = parsed_data["wines"][0]["vintage"]
    @image1 = parsed_data["wines"][0]["iamge"]

    @winename2 = parsed_data["wines"][1]["name"]
    @winery2 = parsed_data["wines"][1]["winery"]
    @varietal2 = parsed_data["wines"][1]["varietal"]
    @year2 = parsed_data["wines"][1]["vintage"]
    @image2 = parsed_data["wines"][1]["iamge"]

    render("wine_search_results.html.erb")

  end
end
