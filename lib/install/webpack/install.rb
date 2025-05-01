apply "#{__dir__}/../install.rb"
apply "#{__dir__}/../install_procfile.rb"

say "Install Webpack with config"
copy_file "#{__dir__}/webpack.config.js", "webpack.config.js"
run "yarn add --dev webpack webpack-cli@3.3.12"

say "Add build script"
build_script = "webpack --config webpack.config.js"

run %(npm set-script build "#{build_script}")
run %(yarn build)

