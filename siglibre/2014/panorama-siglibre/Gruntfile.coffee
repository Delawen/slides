# Generated on 2013-11-26 using generator-reveal 0.2.0
module.exports = (grunt) ->

    grunt.initConfig

        watch:

            livereload:
                options:
                    livereload: true
                files: [
                    'index.html',
                    'css/*.css'
                ]
            coffeelint:
                files: ['Gruntfile.coffee']
                tasks: ['coffeelint']

        connect:

            livereload:
                options:
                    port: 9000
                    # Change hostname to '0.0.0.0' to access
                    # the server from outside.
                    hostname: 'localhost'
                    base: '.'
                    open: true
                    livereload: true

        coffeelint:

            options:
                indentation:
                    value: 4

            files: ['Gruntfile.coffee']

    # Load all grunt tasks.
    require('load-grunt-tasks')(grunt)


    grunt.registerTask 'server',
        'Run presentation locally and start watch process (living document).', [
            'connect:livereload',
            'watch'
        ]

    # Define default task.
    grunt.registerTask 'default', [
        'coffeelint',
        'connect:livereload',
        'watch'
    ]
