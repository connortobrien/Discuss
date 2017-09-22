defmodule Discuss.Repo.Migrations.AddUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :provider, :string
      add :token, :string # we could use this to make requests on github

      timestamps() # adds a created at and last modified
    end
  end
end
