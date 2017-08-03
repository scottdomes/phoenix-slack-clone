defmodule SlingWeb.Router do
  use SlingWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SlingWeb do
    pipe_through :api
  end
end
