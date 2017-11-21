defmodule Chocolate do
  def read_int() do
    {:ok, [value]} = :io.fread('', '~d')
    value
  end

  def common_reduce(range, accumulator, func) do
    Enum.reduce(1..range, accumulator, func)
  end

  def get_line_sums_from_mtx(line_number, mtx) do
    func = &(&2 |> Map.put(&1, mtx[&1] |> Map.values |> Enum.sum))
    common_reduce(line_number, %{}, func)
  end

  def get_total_probability(n, q, space) do
    totals = get_line_sums_from_mtx(n, space)
    func = &(&2 + space[&1][q] / totals[&1] * 1/n)
    common_reduce(n, 0, func)
  end

  def create_mtx_line(column_number) do
    func = &(&2 |> Map.put(&1, read_int()))
    common_reduce(column_number, %{}, func)
  end

  def create_mtx(line_number, column_number) do
    func = &(&2 |> Map.put(&1, create_mtx_line(column_number)))
    common_reduce(line_number, %{}, func)
  end

  def test_case() do
    [n, m] = [read_int(), read_int()]
    mms = create_mtx(n, m)
    q = read_int()
    get_total_probability(n, q, mms)
    |> :erlang.float_to_binary([decimals: 2])
    |> IO.puts
  end

  def main() do
    num_tests = read_int()
    Enum.each(1..num_tests, fn _x -> test_case() end)
  end
end

Chocolate.main()
