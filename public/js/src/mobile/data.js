App.Data = (function(lng, app, undefined) {

    var addEvents = function(data) {
            for (var i = 0, len = data.length; i < len; i++) {
                lng.Data.Sql.insert('events', data[i]);

                lng.Router.section('events');
            }
        };


    return {
        addEvents: addEvents
    }

})(LUNGO, App);
