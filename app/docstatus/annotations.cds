using GRIStatus as service from '../../srv/service';

annotate service.Status with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ID}',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Nombre}',
                Value : Name,
            },
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
            Label : '{i18n>Textos}',
            ID : 'Texts',
            Target : 'texts/@UI.LineItem#Texts',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ID}',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Estado}',
            Value : Name,
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : Name,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : ID,
        },
    },
    UI.FieldGroup #Texts : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : texts.locale,
                Label : 'locale',
            },
            {
                $Type : 'UI.DataField',
                Value : texts.Name,
                Label : 'Name',
            },
        ],
    },
    UI.FieldGroup #Texts1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : texts.locale,
                Label : 'locale',
            },
            {
                $Type : 'UI.DataField',
                Value : texts.Name,
                Label : 'Name',
            },
        ],
    },
    UI.SelectionFields : [
        Name,
    ],
);

annotate service.Status.texts with @(
    UI.FieldGroup #GeneratedGroup2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ID}',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Nombre}',
                Value : Name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup2',
        },        
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ID}',
            Value : ID,
        },
         {
            $Type : 'UI.DataField',
            Label : '{i18n>Estado}',
            Value : locale,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Estado}',
            Value : Name,
        },
    ],    
    
    UI.SelectionFields : [
        ID,
    ],
);

/* annotate service.Status.texts with @(
    UI.FieldGroup #GeneratedGroup2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ID}',
                Value : ID,
            },
             {
                $Type : 'UI.DataField',
                Label : '{i18n>Nombre}',
                Value : locale,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Nombre}',
                Value : Name,
            },
        ],
    },
    UI.LineItem #Texts : [
        {
            $Type : 'UI.DataField',
            Value : locale,
            Label : '{i18n>Idioma}',
        },
        {
            $Type : 'UI.DataField',
            Value : Name,
            Label : '{i18n>Nombre}',
        },
    ]
); */

/* annotate service.Status with {
    Name @Common.Label : 'Name'
};
 */
