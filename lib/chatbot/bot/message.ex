defmodule Chatbot.Bot.Message do
  use Ecto.Schema
  import Ecto.Changeset

  schema "chatbot_messages" do

    field :conversation_id, :id

    timestamps()
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [])
    |> validate_required([])
  end
end
