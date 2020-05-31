Configuration ChangeGrant
{
     
    Import-DscResource –ModuleName "PSDesiredStateConfiguration"

    Node 'localhost' 
    {
       
        $AccessStringTmpl = "nBUILTIN\Администраторы Allow  FullControl`nBUILTIN\Admin Allow  ReadAndExecute"
        File Dirtemp {
            Ensure          = "present"
            DestinationPath = "c:\temp"
            Type            = "Directory"
        }
        Script AclsD
        {
            DependsOn = "[File]Dirtemp"
            SetScript = {
                icacls c:\temp /reset /t /q
                takeown.exe /f c:\temp /r /a /d y
                icacls.exe C:\temp /inheritance:r
                icacls.exe c:\temp /grant:r "Администраторы:(OI)(CI)(F)" "Admin:(OI)(CI)(RX)" /t /q
            }
            GetScript = { return @{ Result = (get-acl c:\temp).AccessToString
                GetScript = $GetScript; SetScript = $SetScript; TestScript = $TestScript
                }
            }
            TestScript = ({ (get-acl c:\temp).AccessToString -eq "{0}"  
            } -f @($AccessStringTmpl))
        }
    }
}

ChangeGrant