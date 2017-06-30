defmodule SpectoPusher.RoomChannel do
    use Phoenix.Channel

    def join("room:lobby", _message, socket) do
        {:ok, socket}
    end
    def join("room" <> _private_room_id, _params, socket) do
        {:ok, socket}
        #  {:error, %{reason: "unauthorized"}}
        # {:ok, reply, socket}
    end
end