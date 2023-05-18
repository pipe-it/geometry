defmodule Geometry.CLI do
  def main(_) do
    Geometry.Parameters.get_params()
  end
end



# Calculate area of polygons
# prompt user to choose from list of polygons
# get parameters(integer) of the choosen ploygon
# calculate and show area of the polygon
# prompt again step 2
