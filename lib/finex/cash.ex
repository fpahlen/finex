defmodule Finex.Cash do
  @enforce_keys [:currency]
  defstruct [:currency, amount: 0.0]

  def from_string(<<currency_code::binary-size(3), " ", amt::binary>>) do
    %Finex.Cash{currency: currency_code, amount: String.to_float(amt)}
  end
  def to_string() do
    "Häpp"
  end
end
