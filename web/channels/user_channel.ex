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

    # broadcast!/3 will notify all joined clients on this
    # socket's topic and invoke their handle_out/3 callbacks
    def handle_in("new_msg", %{"body" => body}, socket) do
        broadcast! socket, "new_msg", %{body: body}
        {:noreply, socket}
    end

    def handle_out("new_msg", payload, socket) do
        #here we can decide which messages to pass to all listeners 
        push socket, "new_msg", payload
        {:noreply, socket}
    end
end