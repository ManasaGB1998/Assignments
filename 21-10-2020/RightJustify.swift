func rightJustify(initialString: String) {
   let spaceCount = 70 - initialString.count - 1
   var indexCount = 0

   while(indexCount < spaceCount) {
       print(terminator: " ")
       indexCount += 1
   }

   print(initialString)
}

rightJustify(initialString: "Manasa")