sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'gri/status/test/integration/FirstJourney',
		'gri/status/test/integration/pages/StatusMain'
    ],
    function(JourneyRunner, opaJourney, StatusMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('gri/status') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStatusMain: StatusMain
                }
            },
            opaJourney.run
        );
    }
);