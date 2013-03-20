package org.jaalon.gtd
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import org.junit.Test

@TestFor(StuffController)
@Mock(Stuff)
class StuffControllerTests {
    @Test
    void testAddStuff() {
        response.reset()

        params['title'] = 'stuff title'
        controller.addStuff()

        assert response.redirectedUrl == '/inbox/index'
        assert controller.flash.size() == 0
        assert Stuff.count() == 1
        assert Stuff.first().title == 'stuff title'
        assert !Stuff.first().done
        assertEquals('/inbox/index', controller.response.redirectedUrl)
    }
}
