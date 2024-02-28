sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'projecth/test/integration/FirstJourney',
		'projecth/test/integration/pages/universityList',
		'projecth/test/integration/pages/universityObjectPage'
    ],
    function(JourneyRunner, opaJourney, universityList, universityObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('projecth') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheuniversityList: universityList,
					onTheuniversityObjectPage: universityObjectPage
                }
            },
            opaJourney.run
        );
    }
);