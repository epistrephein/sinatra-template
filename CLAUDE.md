# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## About This Template

This is a minimal Sinatra application template. When building a new app from this base:

1. Rename the `AppName` class in `app.rb`, `config.ru`, `spec/app_spec.rb`, and `spec/spec_helper.rb` to your app's name.
2. Rename the `app_name` placeholders in `config/sinatra.service` and `config/schedule.rb` to your app's name (lowercase, underscores).
3. Uncomment the relevant database/Redis lines in `app.rb` and `config/schedule.rb` if needed.
4. Uncomment the relevant gem(s) in `Gemfile` and run `bundle install`.

## Commands

```bash
rake dev       # Start development server (default port 4567)
rake spec      # Run tests
rake rubocop   # Run linter
rake test      # Run tests + linter
```

To run a single spec file or example:
```bash
bundle exec rspec spec/app_spec.rb
bundle exec rspec spec/app_spec.rb -e "returns the home page"
```

## Architecture

The app is a single-class Sinatra app (`app.rb`) that inherits from `Sinatra::Base`. All routes live in that class. Views are ERB templates in `views/`. Static assets are in `public/`.

- `app.rb` — main app class: configuration, `before` filter, routes, error handlers
- `config.ru` — Rack entry point, runs `AppName`
- `config/puma.rb` — Puma config; in production uses a Unix socket and multiple workers
- `config/schedule.rb` — Whenever cron job definitions (production only)
- `tasks/` — Rake tasks loaded automatically via `Rake.add_rakelib "tasks/**"`
- `spec/spec_helper.rb` — configures RSpec with `Rack::Test` for integration-style request specs; SimpleCov runs automatically on every test run and outputs coverage to `coverage/`

The `Rakefile` loads `.env` via dotenv in development/test. Environment variables are the only configuration mechanism — no config files.

## Code Style

All files use `# frozen_string_literal: true`. RuboCop is configured in `.rubocop.yml` with most metrics cops disabled. Double quotes are enforced for strings. Stick to the existing RuboCop config rather than introducing new cops or ignores.

## Adding Features

- Add routes directly to the `AppName` class in `app.rb`. Extract to helper modules only if the file grows unwieldy.
- Add background jobs as Rake tasks in `tasks/` and schedule them in `config/schedule.rb`.
- Database connections (Sequel, Redis) follow the commented-out pattern in `app.rb`: a top-level constant assigned with `||=` for idempotency.
- Do not add middleware layers, service objects, or other architectural abstractions unless the complexity clearly justifies them.
