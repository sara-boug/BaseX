let $db := "XMLData" 
let $elements := collection($db) 
for  $element  in $elements
      let $uri := fn:document-uri($element)
         for $c in fn:doc($uri)//root/Entry[AC ='Q62672']
                return  replace value of node $c/AC with "Q62671"
           
       
 