pkgdown::build_site()


rsconnect::deployApp(
  appDir = "docs/",
  appId = 'b03ab3e0-cd65-4e79-baaa-48103a828e9a',
  appPrimaryDoc = "index.html",
  forceUpdate = TRUE
)
