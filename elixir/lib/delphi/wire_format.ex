defmodule Delphi.WireFormat do
  alias Delphi.WireFormat.Header
  alias Delphi.WireFormat.Question
  alias Delphi.WireFormat.Answer

  def encode do
    Header.encode() <> Question.encode()
  end

  def decode(x) do
    <<i::binary-12, j::binary-17, k::binary>> = x
    _ = Header.decode(i)
    _ = Question.decode(j)
    _ = Answer.decode(k)
  end
end
