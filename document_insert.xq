let $db := "XMLData" 
(: custom tree:)
let $model :=  
  <Mod date="01-NOV-1996" Rel="35" type="Last sequence update"/>
let $elements := collection($db) 
for  $element  in $elements
      let $uri := fn:document-uri($element)
      (: Now the exact path of the document, insert is made easy :)
       return insert node  $model as last into doc($uri)//root/Entry[@id= '100K_RAT']
 
 