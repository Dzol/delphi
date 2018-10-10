defmodule Delphi.WireFormat.Answer do
  def decode(x) do
    <<
      # NAME
      0xC0,
      0x0C,
      # TYPE
      0x00,
      0x01,
      # CLASS
      0x00,
      0x01,
      0x00,
      0x00,
      # TTL
      _,
      _,
      # RDLENGTH = 4 bytes
      0x00,
      0x04,
      0x5D,
      0xB8,
      # RDDATA
      0xD8,
      0x22
    >> = x

    <<_::binary-12, data::binary-4>> = x
    data
  end
end
