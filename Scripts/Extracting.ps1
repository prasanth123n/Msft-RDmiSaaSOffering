Param(

    

    [Parameter(Mandatory=$False)]
    [ValidateNotNullOrEmpty()]
    [string] $fileURI ="https://raw.githubusercontent.com/prasanth123n/Msft-RDmiSaaSOffering/master/Scripts/msft-rdmi-saas-offering.zip"

    
      
)
try
{

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $fileURI -OutFile "C:\msft-rdmi-saas-offering.zip"
New-Item -Path "C:\msft-rdmi-saas-offering" -ItemType directory -Force -ErrorAction SilentlyContinue
Expand-Archive "C:\msft-rdmi-saas-offering.zip" -DestinationPath "C:\msft-rdmi-saas-offering" -ErrorAction SilentlyContinue

}
catch [Exception]
{
    Write-Output $_.Exception.Message
}