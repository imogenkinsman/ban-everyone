require "ban_everyone/version"
require "selenium-webdriver"
require "ban_everyone/pearson"
require "ban_everyone/data"

module BanEveryone
  class Bot

    attr_reader :data

    def initialize
      @driver = Selenium::WebDriver.for :firefox
      @data = BanEveryone::Data.new
    end

    #TODO: defeat CAPTCHA... for now we'll just require the user to log in first
    def open_tribunal
      @driver.get('http://na.leagueoflegends.com/tribunal/en/guidelines/')
      'manually login your account, then Bot#start_hax pls'
    end

    def start_hax
      @driver.get('http://na.leagueoflegends.com/tribunal/en/review/')
      @driver.get('http://na.leagueoflegends.com/tribunal/en/accept/')
    end

    def get_review_data

    end

    # pull all data from a single tribunal page
    def pull_data

    end

    # return r value for pearson correlation
    def correlate(indep_var)

    end

    private :pull_data

  end
end