defmodule Chatbot.Repo.Migrations.AddRoleToMessages do
  use Ecto.Migration

  def change do
    alter table(:chatbot_messages) do
      add :role, :string
    end
  end
end
