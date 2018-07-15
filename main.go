package main

import (
	"sandom/9wenwo/models"
	_ "sandom/9wenwo/routers"

	"github.com/astaxie/beego"
)

func main() {
	models.Init()
	beego.Run()
}
