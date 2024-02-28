sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'projecth',
            componentId: 'universityObjectPage',
            contextPath: '/university'
        },
        CustomPageDefinitions
    );
});