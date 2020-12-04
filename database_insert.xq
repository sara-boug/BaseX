let $db := "XMLData"
(:inserting a documetn into db :)
let $root := "C:\BaseX944\XMLData\data\" 
 (: the path to documents should be absolute:)
for $file in file:list($root)
    return db:add($db , $root || $file) (:adding elements to the database:)
    