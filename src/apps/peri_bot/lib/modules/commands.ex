defmodule Modules.Commands do
  use Alchemy.Cogs

  Cogs.def ping do
    Cogs.say("pong")
  end

  Cogs.def echo do
    Cogs.say("please give me a word to echo")
  end

  Cogs.def echo(word) do
    Cogs.say(word)
  end
end
