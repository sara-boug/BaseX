(: deleting all the elements from the database:)
 let $db := "XMLData"
 for $element in db:list($db)
        return db:delete($db , $element)
 