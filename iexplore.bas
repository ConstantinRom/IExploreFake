Attribute VB_Name = "IEVB6"

Sub Main()

    Dim IE As Object
    Dim regKeyPath As String
    Dim defaultValue As String


    cmdLine = Command$

    Set IE = CreateObject("InternetExplorer.Application")
    IE.Visible = True

    If cmdLine <> "" Then
        IE.Navigate cmdLine
    Else
        IE.GoHome
    End If

    Shell "taskkill /F /IM ielowutil.exe /T", vbHide

End Sub



