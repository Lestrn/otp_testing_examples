defmodule OtpTestingExamplesTest2 do
  use ExUnit.Case, async: true

  test "test_foo_insert2" do
    StartApp.start(:ok, :ok)
    OtpTestingExamples.insert(:hello, 1)
    assert OtpTestingExamples.fetch_all() == %{hello: 1}
  end
end
