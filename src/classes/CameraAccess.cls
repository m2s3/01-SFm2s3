public class CameraAccess
{
    
    public ContentVersion cont {get; set;}
    public string sQRCode {get; set;}

    public CameraAccess() {
        System.debug('11-Apex:::CameraAccess() class constructor...');
        cont = new ContentVersion();
        sQRCode = '';
    }     
       
    public PageReference saveFile()
    {
        System.debug('21-Apex:::CameraAccess::saveFile()....');
         
        //PathOnClient is Mandatory
        cont.PathOnClient = cont.title;
        System.debug('22-Apex:::CameraAccess::saveFile():cont.title='+cont.title ); 
 
        //By default Origin value is "C" that means Content must be enabled in Org, so we need to explicitly set Origin as H
        cont.Origin = 'H';
        //insert cont;
         
        String getParamQRCode = apexpages.currentPage().getParameters().get('inpval');
        System.debug('23 Apex Class:PageReference saveFile(): getParam_QRCode=' + getParamQRCode);
        System.debug('23 Apex Class:PageReference saveFile(): attr_sQRCode=' + sQRCode);        
        
        //redirect to path where file is saved
        //return new PageReference('/'+cont.id);    
        return null;
    }

}