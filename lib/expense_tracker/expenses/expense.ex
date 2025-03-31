defmodule ExpenseTracker.Expenses.Expense do
  use Ecto.Schema
  import Ecto.Changeset

  schema "expenses" do
    field :date, :date
    field :title, :string
    field :amount, :decimal
    field :user_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(expense, attrs) do
    expense
    |> cast(attrs, [:title, :amount, :date])
    |> validate_required([:title, :amount, :date])
  end
end
