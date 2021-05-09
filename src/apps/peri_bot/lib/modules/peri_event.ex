defmodule Modules.PeriEvent do
  use Alchemy.Events

  @channel_id Application.get_env(:peri_bot, :channel_id)

  Events.on_message(:check_channel)

  def check_channel(message) do
    if message.channel_id == @channel_id do
      validate(message)
    end
  end
  def validate(message) do
    cond do
      message.attachments == [] -> PeriDb.Posts.create_post(message.author.username, message.content, nil)

      message.content == "" -> PeriDb.Posts.create_post(message.author.username, nil,  (message.attachments |> List.first()).url)
      true -> PeriDb.Posts.create_post(message.author.username, message.content,  (message.attachments |> List.first()).url)
    end
  end
end
