defmodule Demo.Distribution.Monitor do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok)
  end

  @impl true
  def init(_) do
    System.cmd("epmd", ["-daemon"])

    {:ok, hostname_charlist} = :inet.gethostname()
    to_string(hostname_charlist)
    Node.start(:"nerves@#{to_string(hostname_charlist)}")
    Node.set_cookie(:livebook)

    {:ok, []}
  end
end
