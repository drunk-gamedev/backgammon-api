defmodule BackgammonApi.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :email, :string
    field :password_encrypted, :string
    field :username, :string

    timestamps()
  end

  def changeset(user, attrs) do
    required_fields = [:username, :email, :password_encrypted]
    user
    |> cast(attrs, required_fields)
    |> validate_required(required_fields)
  end
end
