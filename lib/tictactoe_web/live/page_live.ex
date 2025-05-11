defmodule TictactoeWeb.PageLive do
  use TictactoeWeb, :live_view
  import TictactoeWeb.TicTacToeComponents

  def mount(_params, _session, socket) do
    board = List.duplicate(nil, 9)
    {:ok, assign_new(socket, :board, fn -> board end)}
  end

  def handle_event("square-click", %{"index" => index}, socket) do
    index = String.to_integer(index)
    {:noreply, update(socket, :board, &List.replace_at(&1, index, "X"))}
  end

  def render(assigns) do
    ~H"""
    <div>
      <.board board={@board}/>
    </div>
    """
  end
end
