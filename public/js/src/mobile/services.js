App.Services = (function(lng, app, undefined) {

    var server_url = 'http://localhost:4567/';

    var lastMonthEvents = function() {
            var year = new Date().getMonth() + 1;
            var month = new Date().getFullYear();
            lng.Service.get(server_url + 'event/', {}, function(response) {
                var events = response.body;
                app.Data.addEvents(events);
            });
        };

    return {
        lastMonthEvents: lastMonthEvents

    }

})(LUNGO, App);
