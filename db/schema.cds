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
    sap.common.CodeList,
    sap.common.Locale  
}
from '@sap/cds/common';

entity ProductFamily
{
    key ID : UUID;
    Intern : Boolean;
    Name: localized String;
}
entity ProductTypes
{
    key ID : UUID;
    Area : String(100);
    Name: localized String;
}

entity Status
{
    key ID : UUID; 
    Name: localized String; 
}
