function unpin{
	param($name);
	(((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $name}).Verbs() | ?{$_.Name.replace('&','') -match 'Odepnout z hlavního panelu'}) | %{$_.DoIt()}
}

unpin "Microsoft Store"
unpin "Microsoft Edge"
unpin "Google Chrome"
