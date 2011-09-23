if getline(1) =~ '^#!.*\<node\>'
    syntax region  javaScriptShebangComment    start=+^#+ end=+node$+ keepend
    hi def link javaScriptShebangComment Comment
endif
