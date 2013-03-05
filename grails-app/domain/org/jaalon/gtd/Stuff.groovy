package org.jaalon.gtd

class Stuff {
    String title
    Boolean done = false

    static constraints = {
        title blank: false, notEqual: 'New stuff'
    }
}
