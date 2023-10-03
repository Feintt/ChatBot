defmodule Chatbot.Repo.Migrations.AddResolvedAtToConversations do
  use Ecto.Migration

  def change do
    alter table(:chatbot_conversations) do
      add :resolved_at, :naive_datetime
    end
  end
end
