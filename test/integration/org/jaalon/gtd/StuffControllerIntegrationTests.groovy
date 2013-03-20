package org.jaalon.gtd
import grails.test.mixin.Mock
import grails.test.mixin.TestFor

@TestFor(StuffController)
@Mock([Stuff, Action])
class StuffControllerIntegrationTests {
    void testDone() {
        Stuff stuff = new Stuff(title: 'title').save()
        assert !stuff.done

        params['id'] = stuff.id
        controller.done()

        assert stuff.done
        assert '/' == controller.response.redirectedUrl
    }

    void testAction() {
        Stuff stuff = new Stuff(title: 'title').save()

        mockDomain(Action, [])
        params['stuff'] = stuff.id
        params['title'] = 'action title'
        params['energy'] = 50
        params['time'] = 120
        params['priority'] = 'High'
        params['context'] = 'At home'
        controller.action()

        assert stuff.done
        assert Action.count() == 1
        Action action = Action.first()
        assert action.stuff == stuff.id
        assert action.title == 'action title'
        assert action.energy == 50
        assert action.time == 120
        assert action.context == 'At home'
        assert action.priority == 'High'
        assert '/' == controller.response.redirectedUrl
    }

    void testTrash() {
        mockDomain(Stuff, [new Stuff(title: 'first stuff')])
        Stuff stuffToDelete = new Stuff(title: 'second stuff').save()
        assert Stuff.count() == 2

        params['id'] = stuffToDelete.id
        controller.trash()

        assert Stuff.count() == 1
        assert '/' == controller.response.redirectedUrl
    }
}
