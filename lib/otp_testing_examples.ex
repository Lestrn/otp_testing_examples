defmodule OtpTestingExamples do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, %{}, name: __MODULE__)
  end

  def fetch_all do
    GenServer.call(__MODULE__, :fetch_all)
  end

  def insert(key, value) do
    GenServer.cast(__MODULE__, {:insert, key, value})
  end

  def fetch_all_via_pid(pid) do
    GenServer.call(pid, :fetch_all)
  end

  def init(initial_state) do
    {:ok, initial_state}
  end

  def handle_call(:fetch_all, _from, state) do
    {:reply, state, state}
  end

  def handle_cast({:insert, key, value}, state) do
    {:noreply, Map.put(state, key, value)}
  end
end
