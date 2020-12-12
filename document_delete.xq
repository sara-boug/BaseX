let $db := "XMLData" 
(:  deleting the tree having the  id == 6  :)
let $elements := collection($db) 
for  $element  in $elements
      let $uri := fn:document-uri($element)
         for $c in fn:doc($uri)//trees/tree[@id = 6]
            (:every tree is put inside a tag:)
                return delete node $c 