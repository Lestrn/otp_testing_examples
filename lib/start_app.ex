defmodule StartApp do
  def start(_type, name \\ nil) do
    children = [
      {OtpTestingExamples, name}
    ]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
