defmodule PeriApi.Router do
  use Plug.Router
  alias PeriDb.Posts

  @api_pass Application.get_env(:peri_api, :api_pass)

  plug(:match)
  plug(:dispatch)

  get "/" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(response(conn)))
  end

  defp response(conn) do
    message = case Map.get(conn, :query_params) == %{} do
      true -> %{message: "Swag 404 guacamole!"}
      _ -> check_auth(conn)
    end
  end
  defp check_auth(conn) do
    case conn.query_params["password"] == @api_pass do
      true -> Posts.get_unread_post(conn.query_params["id"] |>String.to_integer())
      _ -> %{message: "Swag 404 guacamole! #{conn.query_params["password"]} is the wrong password :C"}
    end
  end
end
