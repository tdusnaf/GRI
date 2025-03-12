sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'gri.productfamily',
            componentId: 'ProductFamily_ProductFamily_TextObjectPage',
            contextPath: '/ProductFamily/ProductFamily_Text'
        },
        CustomPageDefinitions
    );
});