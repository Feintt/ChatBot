defmodule Chatbot.Repo.Migrations.AddContentToMessages do
  use Ecto.Migration

  def change do
    alter table(:chatbot_messages) do
      add :content, :string
    end
  end
end
