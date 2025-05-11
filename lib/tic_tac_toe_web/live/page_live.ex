defmodule TicTacToeWeb.PageLive do
  use TicTacToeWeb, :live_view
  import TicTacToeWeb.TicTacToeComponents

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div>
      <.board />
    </div>
    """
  end
end
