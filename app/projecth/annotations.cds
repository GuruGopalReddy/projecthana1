using MyService as service from '../../srv/service';

annotate service.university with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'university_no',
            Value : university_no,
        },
        {
            $Type : 'UI.DataField',
            Label : 'university_name',
            Value : university_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'university_type',
            Value : university_type,
        },
    ]
);
annotate service.university with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'university_no',
                Value : university_no,
            },
            {
                $Type : 'UI.DataField',
                Label : 'university_name',
                Value : university_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'university_type',
                Value : university_type,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'College',
            ID : 'College',
            Target : 'uni_to_college/@UI.LineItem#College',
        },
    ]
);
annotate service.college with @(
    UI.LineItem #College : [
        {
            $Type : 'UI.DataField',
            Value : college_id,
            Label : 'college_id',
        },{
            $Type : 'UI.DataField',
            Value : college_name,
            Label : 'college_name',
        },{
            $Type : 'UI.DataField',
            Value : university_no,
            Label : 'university_no',
        },]
);
annotate service.college with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Branches',
            ID : 'Branches',
            Target : 'college_to_branch/@UI.LineItem#Branches',
        },
    ]
);
annotate service.branches with @(
    UI.LineItem #Branches : [
        {
            $Type : 'UI.DataField',
            Value : branch_id,
            Label : 'branch_id',
        },{
            $Type : 'UI.DataField',
            Value : branch_name,
            Label : 'branch_name',
        },{
            $Type : 'UI.DataField',
            Value : college_id,
            Label : 'college_id',
        },]
);
annotate service.branches with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'student',
            ID : 'student',
            Target : 'branch_to_student/@UI.LineItem#student',
        },
        // {
            // $Type : 'UI.ReferenceFacet',
            // Label : 'semester',
            // ID : 'semester',
            // Target : 'branch_to_sem/@UI.LineItem#semester',
        // },
    ]
);
annotate service.student with @(
    UI.LineItem #student : [
        {
            $Type : 'UI.DataField',
            Value : branch_id,
            Label : 'branch_id',
        },{
            $Type : 'UI.DataField',
            Value : sem_id,
            Label : 'sem_id',
        },{
            $Type : 'UI.DataField',
            Value : student_dob,
            Label : 'student_dob',
        },{
            $Type : 'UI.DataField',
            Value : student_id,
            Label : 'student_id',
        },{
            $Type : 'UI.DataField',
            Value : student_mobile,
            Label : 'student_mobile',
        },{
            $Type : 'UI.DataField',
            Value : student_name,
            Label : 'student_name',
        },]
);
// annotate service.semester with @(
//     UI.LineItem #semester : [
//         {
        //     $Type : 'UI.DataField',
        //     Value : branch_id,
        //     Label : 'branch_id',
        // },{
        //     $Type : 'UI.DataField',
        //     Value : sem_fee,
        //     Label : 'sem_fee',
        // },{
//             $Type : 'UI.DataField',
//             Value : sem_id,
//             Label : 'sem_id',
//         },{
//             $Type : 'UI.DataField',
//             Value : year,
//             Label : 'year',
//         },]
// );
annotate service.student with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'marklists',
            ID : 'marklists',
            Target : 'student_to_marks/@UI.LineItem#marklists',
        },
    ]
);
annotate service.markslist with @(
    UI.LineItem #marklists : [
        {
            $Type : 'UI.DataField',
            Value : marks,
            Label : 'marks',
        },{
            $Type : 'UI.DataField',
            Value : pass_fail,
            Label : 'pass_fail',
        },{
            $Type : 'UI.DataField',
            Value : student_id,
            Label : 'student_id',
        },{
            $Type : 'UI.DataField',
            Value : subject,
            Label : 'subject',
        },{
            $Type : 'UI.DataField',
            Value : yearsem,
            Label : 'yearsem',
        },]
);
// annotate service.semester with @(
//     UI.Facets : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             Label : 'Students',
//             ID : 'Students',
//             Target : 'sem_to_student/@UI.LineItem#Students',
//         },
//     ]
// );
annotate service.student with @(
    UI.LineItem #Students : [
        {
            $Type : 'UI.DataField',
            Value : branch_id,
            Label : 'branch_id',
        },{
            $Type : 'UI.DataField',
            Value : sem_id,
            Label : 'sem_id',
        },{
            $Type : 'UI.DataField',
            Value : student_dob,
            Label : 'student_dob',
        },{
            $Type : 'UI.DataField',
            Value : student_id,
            Label : 'student_id',
        },{
            $Type : 'UI.DataField',
            Value : student_mobile,
            Label : 'student_mobile',
        },{
            $Type : 'UI.DataField',
            Value : student_name,
            Label : 'student_name',
        },]
);
annotate service.markslist with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Marks',
            ID : 'Marks',
            Target : '@UI.FieldGroup#Marks',
        },
    ],
    UI.FieldGroup #Marks : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : marks,
                Label : 'marks',
            },{
                $Type : 'UI.DataField',
                Value : pass_fail,
                Label : 'pass_fail',
            },{
                $Type : 'UI.DataField',
                Value : student_id,
                Label : 'student_id',
            },{
                $Type : 'UI.DataField',
                Value : subject,
                Label : 'subject',
            },{
                $Type : 'UI.DataField',
                Value : yearsem,
                Label : 'yearsem',
            },],
    }
);
annotate service.university with @(
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : university_name,
        },
    }
);
annotate service.university with @(
    UI.SelectionFields : []
);
annotate service.university with {
    university_name @Common.Label : 'university_name'
};
annotate service.university with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.university with @(
    UI.SelectionPresentationVariant #table1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.university with @(
    UI.SelectionPresentationVariant #table2 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);