defmodule DelphiTest do
  use ExUnit.Case

  alias :gen_udp, as: UDP

  test "" do
    passive = [active: false]
    binary = [:binary]

    {:ok, s} = UDP.open(1024)
    :ok = :inet.setopts(s, passive ++ binary)
    :ok = UDP.send(s, '8.8.8.8', 53, Delphi.WireFormat.encode())
    {:ok, r} = UDP.recv(s, 8)
    UDP.close(s)

    {_, _, x} = r

    assert Delphi.WireFormat.decode(x) == <<93, 184, 216, 34>>
  end
end
