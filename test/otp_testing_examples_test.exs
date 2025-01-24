defmodule OtpTestingExamplesTest do
  use ExUnit.Case, async: true

  test "test_foo_insert" do
    StartApp.start(:ok, :ok)
    OtpTestingExamples.insert(:hello, 1)
    assert OtpTestingExamples.fetch_all() == %{hello: 1}
  end
end
