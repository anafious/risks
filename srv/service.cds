using { API_BUSINESS_PARTNER } from './external/API_BUSINESS_PARTNER.cds';

using { riskManagement } from '../db/schema.cds';

@path : '/service/riskManagement'
service riskManagementSrv
{
    @odata.draft.enabled
    entity Risks as
        projection on riskManagement.Risks;

    @odata.draft.enabled
    entity Mitigations as
        projection on riskManagement.Mitigations;

    entity A_BusinessPartner as projection on API_BUSINESS_PARTNER.A_BusinessPartner
    {
        BusinessPartner,
        FirstName,
        LastName
    };
}

annotate riskManagementSrv with @requires :
[
    'authenticated-user'
];
