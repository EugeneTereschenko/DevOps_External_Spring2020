Configuration CopyFileToDirectory {

    # Import the module that contains the File resource.
    Import-DscResource -ModuleName PsDesiredStateConfiguration

    # The Node statement specifies which targets to compile MOF files for, when this configuration is executed.
    Node 'localhost' {

        # The File resource can ensure the state of files, or copy them from a source to a destination with persistent updates.
        File Test {
            DestinationPath = "C:\temp\Test.txt"
            SourcePath = "C:\Test.txt"
            Ensure = "Present"
            Type = "File"
        }
    }
}

CopyFileToDirectory