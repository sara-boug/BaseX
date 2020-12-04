(: listing the elements in a given database and putting them in a tag that    describes their characteristics : 
 document name  and db name  :)
let $db := "XMLData"
    let $elements := collection($db)
    let $i := 0 
for $element in $elements
        let $path := db:path($element)
        let $name := db:name($element)
        let $tag := <db name= "{$name}" > 
                    <doc name ="{$path}" >
                     {$element}
                  </doc>
                 </db>
         return $tag
