using GRIStatus as service from '../../srv/service';

annotate service.Status with @(
    UI.FieldGroup #GeneratedGroup :{
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Estado}',
                Value : ID,
            }
        ],
    },

     UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Texts',
            ID : 'Texts',
            Target : 'Status_Text/@UI.LineItem#Texts',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : Status_Text.Name ,
            Label : '{i18n>Nombre}',
        },
    ],
    UI.SelectionFields : [
        Status_Text.LangCode_code,
        Status_Text.Name,
    ],
    UI.HeaderInfo : {
        TypeName : '{i18n>FamiliaDeProducto}',
        TypeNamePlural : '{i18n>FamiliaDeProductos}',
    },


    
);



