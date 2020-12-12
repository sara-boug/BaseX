let $db := "XMLData" 
(: custom tree:)
let $tree :=   <tree id="6">
              <kind>Maclura</kind>
              <species>Pomifera</species>
              <family>Moraceae</family>
              <common_name>Oranger des osages</common_name>
              <year>1935</year>
              <hauteur>13.0</hauteur>
              </tree>
let $elements := collection($db) 
for  $element  in $elements
      let $uri := fn:document-uri($element)
      (: Now that we know the eaxct path of the document, insert is made easy :)
       return insert node  $tree as first into doc($uri)/trees
 
 