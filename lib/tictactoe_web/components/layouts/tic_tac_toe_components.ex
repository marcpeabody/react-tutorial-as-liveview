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
    <button class="square" phx-click="square-click" phx-value-index={@index}>
      {@value}
    </button>
    """
  end

  def board(assigns) do
    ~H"""
    <div class="board-row">
      <.square value={Enum.at(@board, 0)} index="0" />
      <.square value={Enum.at(@board, 1)} index="1" />
      <.square value={Enum.at(@board, 2)} index="2" />
    </div>
    <div class="board-row">
      <.square value={Enum.at(@board, 3)} index="3" />
      <.square value={Enum.at(@board, 4)} index="4" />
      <.square value={Enum.at(@board, 5)} index="5" />
    </div>
    <div class="board-row">
      <.square value={Enum.at(@board, 6)} index="6" />
      <.square value={Enum.at(@board, 7)} index="7" />
      <.square value={Enum.at(@board, 8)} index="8" />
    </div>
    """
  end
end
