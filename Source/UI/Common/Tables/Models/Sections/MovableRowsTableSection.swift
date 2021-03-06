//
//  MovableRowsTableSection
//  Created on 4/9/18.
//  Copyright © 2018 John Coates. All rights reserved.
//

import Foundation

protocol MovableRowsTableSection: TableSection {
    func moveRowAt(index from: Int, to: Int)
    
}

class GenericMovableRowsTableSection<IdentifierType>: MovableRowsTableSection {

    var headerTitle: String?
    var footerTitle: String?
    var typedRows: [GenericMovableRow<IdentifierType>]
    var rows: [TableRow] {
        return typedRows
    }

    init(headerTitle: String? = nil,
         footerTitle: String? = nil,
         rows: [GenericMovableRow<IdentifierType>] = []) {
        self.headerTitle = headerTitle
        self.footerTitle = footerTitle
        self.typedRows = rows
    }
    
    func moveRowAt(index from: Int, to: Int) {
        let item = typedRows.remove(at: from)
        typedRows.insert(item, at: to)
    }
    
}
