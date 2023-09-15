defmodule Hello.Admin.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :address, :string
    field :role, :string
    field :email, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :role, :address])
    |> validate_required([:name, :email, :role, :address])
    |> unique_constraint(:email)
  end
end
