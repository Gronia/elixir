defmodule Gronia.Repo do
  use Ecto.Repo,
    otp_app: :gronia,
    adapter: Ecto.Adapters.Postgres
end
