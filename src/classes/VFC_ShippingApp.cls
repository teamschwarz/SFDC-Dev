public with sharing class VFC_ShippingApp
{
    private final Case c;
    
    public VFC_ShippingApp(ApexPages.StandardController stdController)
    {
        this.c = (Case)stdController.getRecord();
    }
    
    public PageReference trackShipment()
    {
        update c;
        PageReference pageReference = new PageReference('http://wwwapps.ups.com'
            + '/WebTracking/processInputRequest?tracknum=' + c.Last_Tracking_Number__c);

        return pageReference;
    }
}