defmodule StartApp do
  def start(_type, _args) do
    children = [
      {OtpTestingExamples, nil}
    ]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
