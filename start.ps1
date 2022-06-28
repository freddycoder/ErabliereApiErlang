# Compile erablieres module
"c(erablieres)." | erl
# Compile main module
"c(main)." | erl
# Start erl process
Write-Host "To start the web server. Type the following command: main:start()."
Write-Host "The first endpoint response at the url http://localhost:8081/Erablieres:service"
erl