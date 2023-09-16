defmodule Hello.TodoFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Hello.Todo` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        status: 42,
        text: "some text",
        person_id: 42
      })
      |> Hello.Todo.create_item()

    item
  end
end
