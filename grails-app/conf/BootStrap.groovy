class BootStrap {

    def init = {servletContext ->
        new Wine(name: 'Barolo', lat: ' 44°36\'37.54"', lon: '  7°56\'33.28"E').save()
        new Wine(name: 'Boca', lat: ' 45°40\'46.66"N', lon: '  8°24\'33.50"E').save()
        new Wine(name: 'Albugnano', lat: ' 45° 4\'40.73"N', lon: '  7°58\'16.50"E').save()
        new Wine(name: 'Alto Adige - Pinot Nero', lat: ' 46°29\'42.59"N', lon: ' 11°21\'14.77"E').save()
        new Wine(name: 'Barbaresco', lat: ' 44°43\'30.16"N', lon: '  8° 4\'51.13"E').save()
    }
    def destroy = {
    }
} 