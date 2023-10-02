defmodule Chatbot.Repo do
  use Ecto.Repo,
    otp_app: :chatbot,
    adapter: Ecto.Adapters.SQLite3
end
