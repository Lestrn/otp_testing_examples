defmodule OtpTestingExamplesTest2 do
  use ExUnit.Case, async: true #false

  # test "test_foo_insert2" do
  #   StartApp.start(:type)
  #   OtpTestingExamples.insert(:hello, 1)
  #   assert OtpTestingExamples.fetch_all() == %{hello: 1}
  # end


  test "test_foo_insert2 solution" do
    StartApp.start(:type, :foo_test_insert_2)
    OtpTestingExamples.insert(:foo_test_insert_2, :hello, 1)
    assert OtpTestingExamples.fetch_all(:foo_test_insert_2) == %{hello: 1}
  end
end
