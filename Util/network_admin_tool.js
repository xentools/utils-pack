/**
 * Network Admin Tool
**/
// WindowSystemObject (WSO) 
// Copyright (C) Veretennikov A. B. 2004-2015

MB_OK = 0x00000000; 

var wshShell,wso,form,okButton,cancelButton;

wso = new ActiveXObject("Scripting.WindowSystemObject")
wshShell = new ActiveXObject( "Wscript.Shell" );

form = wso.CreateForm(0,0,250,150)
form.CenterControl()
form.Text = "Network Admin Tool";

ComboBox = form.CreateComboBox(20,20,200,22,wso.Translate("CBS_DROPDOWNLIST"))
ComboBox.DropDownCount = 10;
with (ComboBox)
{
        Add("Devices");
        Add("Network Adapters");
        Add("Network Center");
        Add("DNS Jumper");
        Add("Hosts Editor");
        Add("Computer Management");
        Add("User Accounts");
        Add("User Control");
        Add("User Managements");
        Add("Local Group Policies");
        Add("Firewall Common");
        Add("Firewall Special");
        Add("Services");
        Add("Task Manager");
        Add("System Explorer");
        Add("Svchost Process Analyzer");
	ItemIndex = -1;
}

okButton = form.CreateButton( 20,60, 75,25,"Ok" );
okButton.Default = true;
okButton.OnClick = ConfirmClick;

cancelButton = form.CreateButton( 145,60, 75,25,"Cancel" );
cancelButton.Cancel = true;
cancelButton.OnClick = CloseButtonClick

form.Show();
wso.Run();

function ConfirmClick( Sender )
{
  	switch ( ComboBox.ItemIndex )
  	{
  	  case 0:
		wshShell.Run( "mmc devmgmt.msc");
  	    break;
  	  case 1:
		wshShell.Run( "control ncpa.cpl");
  	    break;
	  case 2:
		wshShell.Run( "control /name Microsoft.NetworkAndSharingCenter");
	  break;
	  case 3:
		wshShell.Run( "dnsjumper.exe");
		break;
	  case 4:
		wshShell.Run( "HostsEditor.exe");
	  break;
	  case 5:
		wshShell.Run( "mmc compmgmt.msc");
	  break;
	  case 6:
		wshShell.Run( "control /name Microsoft.UserAccounts");
	  break;
	  case 7:
		wshShell.Run( "netplwiz.exe");
	  break;
	  case 8:
		wshShell.Run( "mmc lusrmgr.msc");
	  break;
	  case 9:
		wshShell.Run( "mmc gpedit.msc");
	  break;
	  case 10:
		wshShell.Run( "control Firewall.cpl");
	  break;
	  case 11:
		wshShell.Run( "mmc WF.msc");
	  break;
	  case 12:
		wshShell.Run( "mmc services.msc");
	  break;
	  case 13:
		wshShell.Run( "taskmgr.exe");
	  break;
	  case 14:
		wshShell.Run( "systemexplorer.exe");
	  break;
	  case 15:
		wshShell.Run( "SvchostAnalyzer.exe");
	  break;
  	  default:
  	    	form.MessageBox("Choose a program", "Alert", MB_OK );
  	    break;
  	}
}

function CloseButtonClick( Sender )
{
  	form.Close();
}
