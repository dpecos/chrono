class Cronometer
  start: =>
    @start_time = Date.now()

  finish: =>
    @finish_time = Date.now()

  ellapsed: =>
    @finish_time - @start_time

  time: (f) =>
    @start_time()
    f()
    @finish_time()
    console.log "Time spent: #{@ellapsed()}"

module.exports.Cronometer = Cronometer
