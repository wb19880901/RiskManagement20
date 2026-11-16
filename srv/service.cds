using { RiskManagement20 as my } from '../db/schema.cds';

@path : '/service/RiskManagement20Service'
service RiskManagement20Service
{
    @cds.redirection.target
    entity Risk_20 as
        projection on my.Risk_20;

    @cds.redirection.target
    entity Mitigation_20 as
        projection on my.Mitigation_20;
}

annotate RiskManagement20Service with @requires :
[
    'authenticated-user'
];
