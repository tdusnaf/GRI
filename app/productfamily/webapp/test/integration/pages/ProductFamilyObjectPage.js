sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.gri.herramientaaprovisionamiento.productfamily',
            componentId: 'ProductFamilyObjectPage',
            contextPath: '/ProductFamily'
        },
        CustomPageDefinitions
    );
});