sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'workflowui/test/integration/FirstJourney',
		'workflowui/test/integration/pages/HeaderList',
		'workflowui/test/integration/pages/HeaderObjectPage',
		'workflowui/test/integration/pages/ItemObjectPage'
    ],
    function(JourneyRunner, opaJourney, HeaderList, HeaderObjectPage, ItemObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('workflowui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheHeaderList: HeaderList,
					onTheHeaderObjectPage: HeaderObjectPage,
					onTheItemObjectPage: ItemObjectPage
                }
            },
            opaJourney.run
        );
    }
);