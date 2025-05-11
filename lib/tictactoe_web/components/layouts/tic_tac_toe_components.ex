defmodule TictactoeWeb.TicTacToeComponents do
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
    <button class="square" phx-click="square-click" phx-value={@value}>
      {@value}
    </button>
    """
  end

  def board(assigns) do
    ~H"""
    <div class="board-row">
      <.square value="1" />
      <.square value="2" />
      <.square value="3" />
    </div>
    <div class="board-row">
      <.square value="4" />
      <.square value="5" />
      <.square value="6" />
    </div>
    <div class="board-row">
      <.square value="7" />
      <.square value="8" />
      <.square value="9" />
    </div>
    """
  end
end
