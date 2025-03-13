using GRIProductFamilyService as service from '../../srv/service';
annotate service.ProductFamily with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ProductoInterno}',
                Value : Intern,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Familia}',
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
            Label : '{i18n>ProductoInterno}',
            Value : Intern,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Familia}',
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

annotate service.ProductFamily.texts with @(
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
);

annotate service.ProductFamily with {
    Name @Common.Label : 'Name'
};

