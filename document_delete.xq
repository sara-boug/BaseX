let $db := "XMLData" 
(:  deleting the entry having  having the  id == 100K_RAT  :)
let $elements := collection($db) 
for  $element  in $elements
      let $uri := fn:document-uri($element)
         for $c in fn:doc($uri)//root/Entry[@id ="100K_RAT"]
                return delete node $c 
                
                