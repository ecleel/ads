module Ads
  module ApplicationHelper
    # TODO figure out a way to implecet include engine helper. One way is removing isolated_engine option.

    # Public: create banner div with specific data attributes to use
    # it in javascript.
    # 
    # name    - The Symbol or The String of name.
    # options - Hash of options
    #
    # Returns banner's div.
    def banner_for(name, options = {})
      # TODO user can specifiy if he wanna load one ad in render time.
      banner = Banner.find_by_name name
      div_for banner, class: banner.name, data: {name: banner.name, width: banner.width, height: banner.height,} do
      end
    end
  end
end
