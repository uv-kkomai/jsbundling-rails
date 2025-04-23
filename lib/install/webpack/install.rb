apply "#{__dir__}/../install.rb"
apply "#{__dir__}/../install_procfile.rb"

# say "Install Webpack with config"
copy_file "#{__dir__}/webpack.config.js", "webpack.config.js"
# run "yarn add --dev webpack webpack-cli@4.10.0"

say "Add build script"
build_script = "webpack --config ./config/webpack/webpack.config.js"
say %(Add "scripts": { "build": "#{build_script}" } to your package.json), :green

# case `npx -v`.to_f
# when 7.1...8.0
#   run %(npm set-script build "#{build_script}")
#   run %(yarn build)
# when (8.0..)
#   run %(npm pkg set scripts.build="#{build_script}")
#   run %(yarn build)
# else
#   say %(Add "scripts": { "build": "#{build_script}" } to your package.json), :green
# end
