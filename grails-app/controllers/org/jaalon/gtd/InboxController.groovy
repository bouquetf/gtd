package org.jaalon.gtd

class InboxController {
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def stuffList = Stuff.findAllByDone(false, params)
        [stuffList: stuffList, total: stuffList.size()]
    }
}
