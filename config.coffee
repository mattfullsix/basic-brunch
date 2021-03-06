exports.config =

  paths:
    public: 'public'
    watched: ['app', 'scss', 'vendor']

  modules:
    wrapper: false
    definition: false

  skip_files: []

  files:
    javascripts:
      joinTo:
        'js/main.js': /^app/
        'js/vendor/vendor.js': /^vendor/
      order:
        before: []

    stylesheets:
      defaultExtension: 'scss'
      joinTo:
        'css/styles.min.css': /^scss/
      order:
        before: []

  plugins:
    sass:
      mode: 'ruby'
      options: ['--style compressed']