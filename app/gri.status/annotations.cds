using GRIStatus as service from '../../srv/service';
annotate service.Status_Text with @(
    UI.SelectionFields #filterBarMacro : [
    ]
);

annotate service.Status with @(
    UI.LineItem #tableMacro : [
        {
            $Type : 'UI.DataField',
            Value : Status_Text.StatusName,
            Label : 'StatusName',
        },
        {
            $Type : 'UI.DataField',
            Value : Status_Text.status_ID,
            Label : 'status_ID',
        },
        {
            $Type : 'UI.DataField',
            Value : Status_Text.LangCode_code,
            Label : 'LangCode_code',
        },
    ],
    UI.LineItem #tableMacro1 : [
    ],
);

annotate service.Status.Status_Text with @(
    UI.SelectionFields #filterBarMacro : [
    ]
);

