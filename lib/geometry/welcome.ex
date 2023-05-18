defmodule Geometry.Welcome do
  import Geometry.GetParams
  def init do
    IO.puts("""

    --------------------------------------------
      |Calculate Area of Geometrical Polygons|
    --------------------------------------------

    Choose from below:
    Circle -----press 1
    Triangle ---press 2
    Rectangle --press 3
    Square -----press 4

    --------------------------------------------
    """)

    get_params()
  end
end
