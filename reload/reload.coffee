class Dashing.Reload extends Dashing.Widget

  minsToReload = 30
  countdown = 0

  ready: ->
    countdown = minsToReload
    # Check page reload at 1 min intervals
    setInterval(@pageReload, 60 * 1000)
    @set('reload', "Reload in " + countdown + " minutes")

  pageReload: =>
    countdown = countdown - 1
    @set('reload', "Reload in " + countdown + " minutes")
    if countdown == 0
      countdown = minsToReload
      location.reload(true)
