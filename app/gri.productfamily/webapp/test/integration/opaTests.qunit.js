sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'gri/productfamily/test/integration/FirstJourney',
		'gri/productfamily/test/integration/pages/ProductFamilyList',
		'gri/productfamily/test/integration/pages/ProductFamilyObjectPage',
		'gri/productfamily/test/integration/pages/ProductFamily_ProductFamily_TextObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductFamilyList, ProductFamilyObjectPage, ProductFamily_ProductFamily_TextObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('gri/productfamily') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductFamilyList: ProductFamilyList,
					onTheProductFamilyObjectPage: ProductFamilyObjectPage,
					onTheProductFamily_ProductFamily_TextObjectPage: ProductFamily_ProductFamily_TextObjectPage
                }
            },
            opaJourney.run
        );
    }
);