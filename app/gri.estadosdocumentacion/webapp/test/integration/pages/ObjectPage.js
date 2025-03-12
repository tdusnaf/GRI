sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'gri.estadosdocumentacion',
            componentId: 'ObjectPage',
            contextPath: '/undefined'
        },
        CustomPageDefinitions
    );
});