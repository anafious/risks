namespace riskManagement;

using { API_BUSINESS_PARTNER } from '../srv/external/API_BUSINESS_PARTNER.cds';

entity Risks
{
    key ID : UUID;
    risksID : String(10)
        @mandatory;
    name : String(100);
    description : String(500);
    impact : Integer;
    criticality : Integer;
    mitigation : Association to one Mitigations;
    a_BusinessPartner : Association to one API_BUSINESS_PARTNER.A_BusinessPartner;
}

entity Mitigations
{
    key ID : UUID;
    mitigationsID : String(10)
        @mandatory;
    description : String(500);
    counter : Integer;
    risk : Association to one Risks;
}
