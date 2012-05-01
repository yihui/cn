#!/usr/bin/env Rscript

library(knitr)
render_jekyll()
opts_chunk$set(cache = TRUE)
opts_knit$set(upload.fun = imgur_upload)

local({
  all.md = list.files(pattern = '^_.*\\.Rmd$')
  
  for (f in all.md) {
    b = gsub('^_|\\.Rmd$', '', f)
    unlink(paste0(b, '.html'))
    unlink(list.files('_figure/', '^(^\\d)+', full.names = TRUE))
    opts_chunk$set(cache.path = paste('_cache', b, sep = '/'),
                   fig.path = paste('_figure', b, sep = '/'))
    message('processing ', f)
    knit(f, output = paste0(b, '.md'))
  }
})