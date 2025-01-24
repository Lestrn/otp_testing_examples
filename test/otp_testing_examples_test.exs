defmodule OtpTestingExamplesTest do
  use ExUnit.Case
  doctest OtpTestingExamples

  test "greets the world" do
    assert OtpTestingExamples.hello() == :world
  end
end
