## PowerShell in Practice
## by Richard Siddaway
## Listing 13.19
## Reading XML
###################################
Get-Content powershell.xml 

Select-String -Path powershell.xml -Pattern "url" –SimpleMatch 
Select-String -Path powershell.xml -Pattern "Siddaway" –SimpleMatch 

Select-Xml -Path powershell.xml -XPath "/PowerShell/blogs/blog" 
Select-Xml -Path powershell.xml -XPath "/PowerShell/blogs/blog" | select -ExpandProperty Node 

Select-Xml -Path powershell.xml -XPath "/PowerShell/books/book[1]" | select -ExpandProperty Node   

Select-Xml -Path powershell.xml -XPath "/PowerShell/books/book[last()]" | select -ExpandProperty Node                                           6

Select-Xml -Path powershell.xml -XPath "/PowerShell/blogs/blog[last()-1]"  | select -ExpandProperty Node                                       7

Select-Xml -Path powershell.xml -XPath "/PowerShell/books/book[year>2008]/title" | select -ExpandProperty Node 

Select-Xml -Path powershell.xml -XPath "/PowerShell/books/book/title/text()" | select -ExpandProperty Node | select value                              