defmodule PeriBot do
  use Application
  alias Alchemy.Client

  @token Application.get_env(:peri_bot, :token)

  def start(_type, _args) do
    run = Client.start(@token)
    use Modules.PeriEvent
    use Modules.Commands
    run
  end
end
