let $db := "XMLData" 
(:  udating tree which year equals 1935 to 1966  :)
let $elements := collection($db) 
for  $element  in $elements
      let $uri := fn:document-uri($element)
         for $c in fn:doc($uri)//trees/tree[year =1935]
            (:every tree is put inside a tag:)
                return  replace value of node $c/year with "1966"
           
       
 