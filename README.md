# SpectoPusher

### Dev setup

 - it is recommended to use [asdf version manager](https://github.com/asdf-vm/asdf). anyways make sure your local versions match the ones defined at `.tools-versions`

### DB

not sure we need one, by currently we use sqlite3. didn't test it yet.

https://github.com/scouten/sqlite_ecto2

### Static Assets
we use webpack, but I don't expect we'll use it much.
we should prefer a simple round-trip UI & static pages.

------------------------------------------

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
