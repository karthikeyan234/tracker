defmodule ExpenseTracker.ExpensesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ExpenseTracker.Expenses` context.
  """

  @doc """
  Generate a expense.
  """
  def expense_fixture(attrs \\ %{}) do
    {:ok, expense} =
      attrs
      |> Enum.into(%{
        amount: "120.5",
        date: ~D[2025-03-30],
        title: "some title"
      })
      |> ExpenseTracker.Expenses.create_expense()

    expense
  end
end
