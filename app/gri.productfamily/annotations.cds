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
            Target : 'ProductFamily_Text/@UI.LineItem#Texts',
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
            Label : '{i18n>ProductoInterno}',
            Value : Intern,
        },
        {
            $Type : 'UI.DataField',
            Value : ProductFamily_Text.Name,
            Label : '{i18n>Nombre}',
        },
    ],
    UI.SelectionFields : [
        ProductFamily_Text.LangCode_code,
        ProductFamily_Text.Name,
    ],
    UI.HeaderInfo : {
        TypeName : '{i18n>FamiliaDeProducto}',
        TypeNamePlural : '{i18n>FamiliaDeProductos}',
    },
);

annotate service.ProductFamily.ProductFamily_Text with {
    LangCode @(
        Common.Label : '{i18n>Idioma}',
        Common.ValueListWithFixedValues : true,
        Common.Text : LangCode.descr,
        )
};

annotate service.ProductFamily.ProductFamily_Text with @(
    UI.LineItem #Texts : [
        {
            $Type : 'UI.DataField',
            Value : LangCode_code,
        },
        {
            $Type : 'UI.DataField',
            Value : Name,
            Label : '{i18n>Nombre}',
        },
    ]
);

annotate service.LangCode with {
    code @Common.Text : descr
};

annotate service.ProductFamily.ProductFamily_Text with {
    Name @Common.Label : '{i18n>Familia}'
};

