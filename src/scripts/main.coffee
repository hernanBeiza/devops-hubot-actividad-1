module.exports = (robot) ->
	enterReplies = ['¡Hola!', '¡Bienvenido¡']
	leaveReplies = ['¡Adiós!','¡Que te vaya bien!']
	
	robot.enter (res) ->
		res.send res.random enterReplies
	
	robot.leave (res) ->
		res.send res.random leaveReplies
	
	robot.hear /hola/i, (res) ->
		res.send res.random enterReplies
	
	robot.hear /adios/i, (res) ->
		res.send res.random leaveReplies

	robot.hear /prueba/i, (res) ->
		res.send "Escuchando..."

	robot.hear /hora/i, (res) ->
		today = new Date
		day = today.getDay()
		daylist = [
			'Sunday'
			'Monday'
			'Tuesday'
			'Wednesday '
			'Thursday'
			'Friday'
			'Saturday'
		]
		hour = today.getHours()
		minute = today.getMinutes()
		second = today.getSeconds()

		res.send "Son las " + hour + ":" + minute + ":" + second