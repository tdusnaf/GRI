using { GRI as my } from '../db/schema';

@path: '/service/GRISvcs'
@requires: 'authenticated-user'

service GRIProductFamilyService {
    @odata.draft.enabled   
    entity ProductFamily as projection on my.ProductFamily;   

};

service GRIProductTypeService {
    @odata.draft.enabled
    entity ProductType as projection on my.ProductTypes;    
};

service GRIStatus {
    @odata.draft.enabled
    entity Status as projection on my.Status; 
};

