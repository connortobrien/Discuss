defmodule Discuss.Topic do
  @moduledoc """
    Provides the model for the topics object.
  """

  use Discuss.Web, :model

  schema "topics" do # <- database name
    field :title, :string
    belongs_to :user, Discuss.User
    has_many :comments, Discuss.Comment
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
