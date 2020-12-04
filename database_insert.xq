(:inserting a given document:)
let $db := "XMLData"
let $root := "C:\BaseX944\test_data\" (: the path to documents should be absolute:) 
for $file in file:list($root)
  return db:add($db , $file)
    