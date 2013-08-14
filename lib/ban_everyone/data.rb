# data struc for holding collected data
module BanEveryone
  class Data

    attr_reader :punish, :caps_lines, :bad_lines, :total_lines, :items_lists

    def initialize
      @punish = nil
      @caps_lines = nil
      @bad_lines = nil
      @total_lines = nil
      @items_lists = []
    end

    def add_list(ary)
      self.items_lists << ary
    end

  end
end