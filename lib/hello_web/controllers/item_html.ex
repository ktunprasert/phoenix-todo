defmodule HelloWeb.ItemHTML do
  use HelloWeb, :html

  embed_templates "item_html/*"

  @doc """
  Renders a item form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def item_form(assigns)

  def complete(%{:status => status}) do
    case status do
      1 -> "completed"
      _ -> ""
    end
  end

  def remaining_items(items) do
    items
    |> Enum.filter(&(&1.status == 0))
    |> length
  end
end
