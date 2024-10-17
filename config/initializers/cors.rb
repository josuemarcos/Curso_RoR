Rails.application.config.middleware.insert_before 0, Rack::Cors do
    puts "CORS middleware is loading for #{Rails.env} environment"
    allow do
      origins 'https://upgraded-broccoli-97rggpxxwrgcp9xj-3030.app.github.dev', 'https://localhost:3030'
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true,
        max_age: 86400
    end
  end
  