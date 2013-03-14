package org.jaalon.gtd

class Action {
    String title
    String project
    String context
    Integer energy
    Integer time
    String priority
    Integer stuff

    static constraints = {
        priority inList: ["High", "Medium", "Low"];
        title blank: false, nullable: false
        project nullable: true
        energy blank: false, nullable: false
    }
}
