defmodule Geometry.GetParams do
  import Geometry.Prompt
  import Geometry.Parameters

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
end
