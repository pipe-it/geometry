defmodule Geometry.Parameters do
  import Geometry, only: [read_integer: 1]

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

  def get_params do
    choice = read_integer("Enter a number to choose:  ")

    cond do
      choice == 1 ->
        circle_area()
        try_again()

      choice == 2 ->
        triangle_area()
        try_again()

      choice == 3 ->
        rectangle_area()
        try_again()

      choice == 4 ->
        square_area()
        try_again()

      choice >= 5 || choice <= 0 ->
        IO.puts("""

        ***Invalid choice, please enter a valid choice***

        """)

        get_params()
    end
  end

  def try_again do
    calculate =
      IO.gets("Do you want to calculate more? enter y/n and press enter ") |> String.trim()

    if calculate == "y" do
      get_params()
    else
      IO.puts("Ciao Ciao ..!")
    end
  end

  def circle_area do
    radius = read_integer("enter radius of the circle: ")
    area = 3.14 * radius * radius
    IO.puts("Circle Area is #{area}")
  end

  def triangle_area do
    base = read_integer("enter base of the triangle: ")

    height = read_integer("enter height of the triangle: ")

    area = base * height / 2
    IO.puts("Triangle Area is #{area}")
  end

  def rectangle_area do
    length = read_integer("enter length of the rectangle: ")

    breadth = read_integer("enter breadth of the rectangle: ")

    area = length * breadth
    IO.puts("Rectangle Area is #{area}")
  end

  def square_area do
    side = read_integer("enter side of the square: ")

    area = side * side
    IO.puts("Square Area is #{area}")
  end
end
