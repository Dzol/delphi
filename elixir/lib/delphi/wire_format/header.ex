defmodule Delphi.WireFormat.Header do
  def encode do
    <<
      # ID
      0xAA,
      0xAA,
      # Query parameters
      0x01,
      0x00,
      # Number of questions
      0x00,
      0x01,
      # Number of answers
      0x00,
      0x00,
      # Number of authority records
      0x00,
      0x00,
      # Number of additional records
      0x00,
      0x00
    >>
  end

  def decode(x) do
    <<
      # Same ID as before
      0xAA,
      0xAA,
      # Different flags, we'll look at this below
      0x81,
      0x80,
      # 1 question
      0x00,
      0x01,
      # 1 answer
      0x00,
      0x01,
      # No authority records
      0x00,
      0x00,
      # No additional records
      0x00,
      0x00
    >> = x
  end
end
