defmodule Geometry.Parameters do
  import Geometry, only: [read_integer: 1]

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
    IO.puts("Triangle Area is #{area}")
  end

  def square_area do
    side = read_integer("enter side of the square: ")

    area = side * side
    IO.puts("Triangle Area is #{area}")
  end
end
