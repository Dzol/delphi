defmodule Delphi.WireFormat.Question do
  def encode do
    <<
      # 'example' has length 7, e
      0x07,
      0x65,
      # x, a
      0x78,
      0x61,
      # m, p
      0x6D,
      0x70,
      # l, e
      0x6C,
      0x65,
      # 'com' has length 3, c
      0x03,
      0x63,
      # o, m
      0x6F,
      0x6D,
      # zero byte to end the QNAME 
      0x00,
      # QTYPE 
      0x00,
      0x01,
      # QCLASS
      0x00,
      0x01
    >>
  end

  def decode(x) do
    <<
      # 'example' has length 7, e
      0x07,
      0x65,
      # x, a
      0x78,
      0x61,
      # m, p
      0x6D,
      0x70,
      # l, e
      0x6C,
      0x65,
      # 'com' has length 3, c
      0x03,
      0x63,
      # o, m
      0x6F,
      0x6D,
      # zero byte to end the QNAME 
      0x00,
      # QTYPE 
      0x00,
      0x01,
      # QCLASS
      0x00,
      0x01
    >> = x
  end
end
