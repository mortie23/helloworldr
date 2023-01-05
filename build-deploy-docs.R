pkgdown::build_site()

# appId = '',
rsconnect::deployApp(
  appDir = "docs/",
  appPrimaryDoc = "index.html",
  forceUpdate = TRUE
)
