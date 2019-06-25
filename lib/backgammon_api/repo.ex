defmodule BackgammonApi.Repo do
  use Ecto.Repo,
    otp_app: :backgammon_api,
    adapter: Ecto.Adapters.Postgres
end
