sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/gri/herramientaaprovisionamiento/productfamily/test/integration/FirstJourney',
		'com/gri/herramientaaprovisionamiento/productfamily/test/integration/pages/ProductFamilyList',
		'com/gri/herramientaaprovisionamiento/productfamily/test/integration/pages/ProductFamilyObjectPage',
		'com/gri/herramientaaprovisionamiento/productfamily/test/integration/pages/ProductFamily_textsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductFamilyList, ProductFamilyObjectPage, ProductFamily_textsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/gri/herramientaaprovisionamiento/productfamily') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductFamilyList: ProductFamilyList,
					onTheProductFamilyObjectPage: ProductFamilyObjectPage,
					onTheProductFamily_textsObjectPage: ProductFamily_textsObjectPage
                }
            },
            opaJourney.run
        );
    }
);