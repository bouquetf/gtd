package org.jaalon.gtd

class StuffController {
    def scaffold = true

    def newStuff = {

    }

    def cancel = {
        redirect(controller: "inbox", action: "index")
    }

    def addStuff = {
        new Stuff(params).save()
        redirect(controller: "inbox", action: "index")
    }

    def done = {
        Stuff.findById(params.id).setDone(true)
        redirect(controller: "inbox", action: "index")
    }

    def action = {
    }
}
