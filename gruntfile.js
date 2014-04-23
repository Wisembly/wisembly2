module.exports = function(grunt) {
    grunt.loadNpmTasks('grunt-contrib-watch');  // npm install grunt-contrib-watch --save-dev
    grunt.loadNpmTasks('grunt-contrib-sass');   // npm install grunt-contrib-sass --save-dev
    grunt.loadNpmTasks('grunt-autoprefixer');   // npm install grunt-autoprefixer --save-dev
    grunt.loadNpmTasks('grunt-contrib-cssmin'); // npm install grunt-contrib-cssmin --save-dev
    //grunt.loadNpmTasks('grunt-kss');          // npm install grunt-kss --save-dev

    grunt.initConfig({

        // Sass
        sass: {
          dist: {
            options: {
              style: 'expanded'
            },
            files: {
              'web/src/scss/unprefixed/style-unprefixed.css': 'web/src/scss/wisembly.scss'
            }
          }
        },

        // Autoprefixer

        autoprefixer: {
          dist: {
            options: {
              browsers: ['last 2 version']
            },
            src: 'web/src/scss/unprefixed/style-unprefixed.css',
            dest: 'web/static/css/style.css'
          }
        },

        // Minification

        cssmin: {
          combine: {
            files: {
              'web/static/css/style.min.css': ['web/static/css/style.css']
            }
          }
        },

        // Watch & reload

        watch: {
          dev: {
            files: ['web/src/scss/**/*.scss', 'web/src/js/**/*.js', 'web/src/fonts/*.*'],
            tasks: ['sass', 'autoprefixer', 'cssmin'],
            options: { livereload: false },
          },
          livereload: {
            files: ["web/static/css/*.css", "web/static/*.html"],
            options: { livereload: 35729 }
          }
        },

        // KSS : Styleguide Generator
        kss: {
          files: {
            src: 'web/src/scss/',
            dest: 'web/static/styleguide/'
          },
          options: {
            template: 'doc/styleguide/template/'
          }
        }

    });

    // Tasks registred
    grunt.registerTask('css-dev', ['sass', 'autoprefixer', 'cssmin', 'uglify:min', 'watch']);
};
