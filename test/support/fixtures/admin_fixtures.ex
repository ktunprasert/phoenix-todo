defmodule Hello.AdminFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Hello.Admin` context.
  """

  @doc """
  Generate a unique user email.
  """
  def unique_user_email, do: "some email#{System.unique_integer([:positive])}"

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "some name",
        address: "some address",
        role: "some role",
        email: unique_user_email()
      })
      |> Hello.Admin.create_user()

    user
  end
end
