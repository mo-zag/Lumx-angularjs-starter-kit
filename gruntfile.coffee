module.exports = (grunt) ->

  # configuration
  grunt.initConfig

    # grunt sass
    sass:
      compile:
        options:
          style: 'expanded'
        files: [
          expand: true
          cwd: 'lib/sass'
          src: ['**/*.scss']
          dest: 'lib/css'
          ext: '.css'
        ]

    # grunt coffee
    coffee:
      compile:
        expand: true
        cwd: 'lib/coffee'
        src: ['**/*.coffee']
        dest: 'lib/js'
        ext: '.js'
        options:
          bare: true
          preserve_dirs: true
          
    #Light weight server
    connect:
      example:
        port: 8000
        base: ''

    # grunt watch (or simply grunt)
    watch:
      html:
        files: ['**/*.html']
      sass:
        files: '<%= sass.compile.files[0].src %>'
        tasks: ['sass']
      coffee:
        files: '<%= coffee.compile.src %>'
        tasks: ['coffee']
      options:
        livereload: true

  # load plugins
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks('grunt-connect');
  

  # tasks
  grunt.registerTask 'default', ['sass', 'coffee', 'watch', 'connect']