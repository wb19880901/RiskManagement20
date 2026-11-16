namespace RiskManagement20;

using
{
    managed,
}
from '@sap/cds/common';

entity Risk_20 : managed
{
    key ID : UUID;
    title_20 : String(100);
    prio_20 : String(5);
    descr_20 : String(100);
    impact_20 : Integer;
    criticality_20 : Integer;
    mitigation_20 : Association to one Mitigation_20;
}

entity Mitigation_20 : managed
{
    key ID : UUID;
    description_20 : String(100);
    owner_20 : String(100);
    timeline_20 : String(100);
    risk_20s : Association to many Risk_20 on risk_20s.mitigation_20 = $self;
}
