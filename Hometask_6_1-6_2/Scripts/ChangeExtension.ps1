Configuration ChangeFileExtension
{

 Import-DscResource –ModuleName PSDesiredStateConfiguration

    Node localhost
    {

         script ChangeExtention 
         {
            GetScript = { @{} }
            TestScript = { $false }
            SetScript = { 
                            Rename-Item C:\temp\Test.txt test.log
                            Rename-Item C:\temp\HelloWorld.txt HelloWorld.log
             }
        }

    }
}

ChangeFileExtension