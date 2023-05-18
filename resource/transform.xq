xquery version "3.1";
declare option exist:serialize "method=html5 media-type=text/html";

let $xml := doc("IRT256a.xml")
let $xsl := doc("Stylesheets-9.4/start-edition.xsl")

return transform:transform($xml,$xsl,())
