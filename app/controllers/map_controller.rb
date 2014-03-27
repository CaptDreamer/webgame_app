class MapController < ApplicationController
	include ActionView::Helpers::UrlHelper

  def map
  	@all_system = System.all
  	@map_table = "<table>"
  	(-10..10).each do |row|
  		@map_table = @map_table + "<tr>"
  		(-10..10).reverse_each do |col|
  			cell = @all_system.where('locx = ? AND locy = ?', col, row).take
  			if cell.nil?
  				@map_table = @map_table + "<td>(#{row}, #{col})</td>"
  			else
  				@map_table = @map_table + "<td><b> #{link_to('FOUND!', system_path(cell.id))} </b></td>"
  			end
  		end
  		@map_table = @map_table + "</tr>"
  	end
  	@map_table = @map_table + "</table>"
  end
end
