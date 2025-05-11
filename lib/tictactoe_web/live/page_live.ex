defmodule TictactoeWeb.PageLive do
  use TictactoeWeb, :live_view
  import TictactoeWeb.TicTacToeComponents

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_event("square-click", _payload, socket) do

    IO.inspect("CLICKED")
    {:noreply, socket}
  end

  def render(assigns) do
    ~H"""
    <div>
      <.board />
    </div>
    """
  end
end
