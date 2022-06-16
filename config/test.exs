import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :dashboard_suivi_passager, DashboardSuiviPassager.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "dashboard_suivi_passager_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :dashboard_suivi_passager, DashboardSuiviPassagerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "l2z2ZoNt62YPBZ8enOeAb7WWEku1Qexzv/ynxDE3QIWi20etem0IFPh4JwHQ7C6g",
  server: false

# In test we don't send emails.
config :dashboard_suivi_passager, DashboardSuiviPassager.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
