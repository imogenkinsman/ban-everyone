#riot uses a sprite sheet for items, as seen here: http://ddragon.leagueoflegends.com/cdn/3.10.3/img/sprite/item0.png

module BanEveryone
  class Item

    #dorans blade is at -48px, -96px on the sprite sheet
    def self.dorans?(x, y)
      if (x == -48 && y == -96)
        true
      else
        false
      end
    end
  end
end