Param(

    

    [Parameter(Mandatory=$True)]
    [ValidateNotNullOrEmpty()]
    [string] $fileURI

    
      
)
try
{


Invoke-WebRequest -Uri $fileURI -OutFile "C:\msft-rdmi-saas-offering.zip"
New-Item -Path "C:\msft-rdmi-saas-offering" -ItemType directory -Force -ErrorAction SilentlyContinue
Expand-Archive "C:\msft-rdmi-saas-offering.zip" -DestinationPath "C:\msft-rdmi-saas-offering" -ErrorAction SilentlyContinue

}
catch [Exception]
{
    Write-Output $_.Exception.Message
}