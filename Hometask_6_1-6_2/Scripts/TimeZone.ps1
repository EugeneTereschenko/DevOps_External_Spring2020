Configuration TimeZone
{
     
    Import-DscResource –ModuleName "PSDesiredStateConfiguration"

    Node 'localhost' 
    {

            Script TimeZoneSettings {
            SetScript = { tzutil.exe /s "North Asia East Standard Time" }
            GetScript = { return @{ Result = [System.TimeZone]::CurrentTimeZone.StandardName
                GetScript = $GetScript.Trim(); SetScript = $SetScript.Trim(); TestScript = $TestScript.Trim()
                }
            }
            TestScript = { [System.TimeZone]::CurrentTimeZone.StandardName -eq "Russia TZ 7 Standard Time" }
        }

    }
}

TimeZone