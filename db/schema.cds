namespace GRI;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    managed,
    temporal,
    sap.common.CodeList
}
from '@sap/cds/common';

entity ProductFamily
{
    key ID : UUID;
    Intern : Boolean;
    ProductFamily_Text : Composition of many {
        key ID : UUID;
        LangCode : Association to LangCode;
        Name : String(200);
    }
}

entity ProductTypes
{
    key ID : UUID;
    Area : String(100);
    ProductTypes_Text : Composition of many {
        key ID : UUID;    
        LangCode : Association to LangCode;
        Name : String(200);
    }
}


entity Status
{
    key ID : UUID; 
    Status_Text : Composition of many {
        key ID : UUID;        
        LangCode : Association to LangCode;
        Name : String(100);
    }   
}



entity LangCode : CodeList {
key code: String enum {
    English = 'ENG';
    Español = 'ESP'; 
    French = 'FRN';
    Italiano = 'ITA' 
};
}

/* entity ProductFamily
{
    key ID : UUID;
    Intern : Boolean;
    ProductFamily_Text : Association to many ProductFamily_Text on ProductFamily_Text.productFamily = $self;
}

entity ProductFamily_Text
{
    key ID : UUID;
    key productFamily : Association to one ProductFamily;
    LangCode : String(3);
    Name : String(200);
} */

/* entity ProductTypes
{
    key ID : UUID;
    Area : String(100);
    productTypes_Text : Association to many ProductTypes_Text on productTypes_Text.productTypes = $self;
}

entity ProductTypes_Text
{
    key ID : UUID;
    key productTypes : Association to one ProductTypes;
    LangCode : String(3);
    Name : String(200);
} */

/* entity Status
{
    key ID : UUID;
    Name : String(50);
}

entity Status_Text
{
    key ID : UUID;
    status : Association to one Status;
    LangCode : String(3);
    StatusName : String(100);
} */
