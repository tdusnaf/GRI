using { GRI as my } from '../db/schema';
using { sap } from '@sap/cds/common';


@path: '/service/GRISvcs'
@requires: 'authenticated-user'


service GRIProductFamilyService {
    @odata.draft.enabled       
    entity ProductFamily as projection on my.ProductFamily;   

};
annotate GRI.ProductFamily with @fiori.draft.enabled;
annotate GRI.ProductFamily.texts {
	locale @(

		ValueList.entity:'Languages', Common.ValueListWithFixedValues, //show as drop down, not a dialog

	)
}

extend service GRIProductFamilyService {
	@readonly entity Languages as projection on sap.common.Languages;
} 
 

service GRIProductTypeService {
    @odata.draft.enabled
    entity ProductType as projection on my.ProductTypes;    
};

service GRIStatus {
    @odata.draft.enabled
    entity Status as projection on my.Status; 
};

