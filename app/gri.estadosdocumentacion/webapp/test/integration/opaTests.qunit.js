sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'gri/estadosdocumentacion/test/integration/FirstJourney',
		'gri/estadosdocumentacion/test/integration/pages/List',
		'gri/estadosdocumentacion/test/integration/pages/ObjectPage'
    ],
    function(JourneyRunner, opaJourney, List, ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('gri/estadosdocumentacion') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheList: List,
					onTheObjectPage: ObjectPage
                }
            },
            opaJourney.run
        );
    }
);