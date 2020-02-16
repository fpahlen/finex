defmodule Finex.Cashflow do
  alias Finex.Cash
  @enforce_keys [:date, :cash]
  defstruct [:date, :cash]

  # "2020-02-16 SEK 12.34"
  def from_string(<<date::binary-size(10), " ", cash::binary>>) do
    %Finex.Cashflow{date: Date.from_iso8601!(date), cash: Cash.from_string(cash)}
  end
end
