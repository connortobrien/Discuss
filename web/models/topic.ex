defmodule Discuss.Topic do
  @moduledoc """
    Provides the model for the topics object.
  """

  use Discuss.Web, :model

  schema "topics" do # <- database name
    field :title, :string
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
