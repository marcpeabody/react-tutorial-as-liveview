defmodule TicTacToeWeb.TicTacToeComponents do
  use Phoenix.Component

  @doc """
  Renders a board square

  ## React Version

  export default function Square() {
    return <button className="square">X</button>;
  }
  """
  def square(assigns) do
    ~H"""
    <button class="square">
      {@value}
    </button>
    """
  end
end
