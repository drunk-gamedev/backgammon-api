defmodule BackgammonApiWeb.Router do
  use BackgammonApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BackgammonApiWeb do
    pipe_through :api
  end
end
