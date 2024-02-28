sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        exitmethod: function(oEvent) {
            MessageToast.show("going to the google.");
            window.open ('https://www.google.co.in/','_blank');
        }
    };
});
