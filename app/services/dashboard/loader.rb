# We require these files explicitly as the menu classes can't be reloaded
# to keep the singletons working.
require 'menu/node'
require 'menu/item'
require 'menu/divider'
require 'menu/toggle'
require 'menu/manager'

module Dashboard
  class Loader
    def self.load

      Manager.map do |dashboard|
        dashboard.widget :row=>1,:col=>1,:sizex=>8,:sizey=>1,:name=>'status_widget'
        dashboard.widget :row=>1,:col=>9,:sizex=>4,:sizey=>1,:name=>'status_chart_widget'
        dashboard.widget :row=>2,:col=>1,:sizex=>6,:sizey=>1,:name=>'reports_widget'
        dashboard.widget :row=>2,:col=>7,:sizex=>6,:sizey=>1,:name=>'distribution_widget'
      end

    end
  end
end
