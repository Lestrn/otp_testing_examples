defmodule OtpTestingExamplesTest do
  use ExUnit.Case, async: true #false

  # test "test_foo_insert" do
  #   StartApp.start(:type)
  #   OtpTestingExamples.insert(:hello, 1)
  #   assert OtpTestingExamples.fetch_all() == %{hello: 1}
  # end

  test "test_foo_insert solution" do
    StartApp.start(:type, :foo_test_insert_1)
    OtpTestingExamples.insert(:foo_test_insert_1, :hello, 1)
    assert OtpTestingExamples.fetch_all(:foo_test_insert_1) == %{hello: 1}
  end
end
