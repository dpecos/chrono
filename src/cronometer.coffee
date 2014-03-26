class Cronometer
  start: =>
    @start_time = Date.now()

  finish: =>
    @finish_time = Date.now()

  ellapsed: =>
    @finish_time - @start_time

  @time: (f) =>
    crono = new Cronometer
    crono.start()
    f()
    crono.finish()
    console.log "Time spent: #{crono.ellapsed()} ms"

module.exports.Cronometer = Cronometer
