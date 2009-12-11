import grails.test.GrailsUnitTestCase

class WineTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testSomething() {
        mockDomain Wine
        final def wine = new Wine()
        assertFalse wine.validate()
        wine.name = 'Barolo'
        wine.lat = ' 44°36\'37.54"N'
        wine.lon = '  7°56\'33.28"E'
        assertTrue wine.validate()
    }
}
