const express = require("express")

const cors = require("cors")

const routerUser = require("./router/user")
const routerRoom = require("./router/room")
const routerconfirmation = require("./router/confirmations")
const routerreservation = require("./router/reservation")

const app = express()
app.use(express.json())

app.use(cors("*"))
app.use(express.static("uploads"))
app.use("/user", routerUser)
app.use("/room", routerRoom)
app.use("/confirmation", routerconfirmation)
app.use("/reservation", routerreservation)

app.listen(4004, "192.168.0.110", () => {
  console.log("Server started at port 4004")
})
