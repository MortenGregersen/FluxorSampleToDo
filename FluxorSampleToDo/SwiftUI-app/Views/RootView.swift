/**
 * FluxorSampleToDo
 *  Copyright (c) Morten Bjerg Gregersen 2020
 *  MIT license, see LICENSE file for details
 */

import SwiftUI

struct RootView: View {
    @State private var showAddSheet = false

    var body: some View {
        NavigationView {
            TodoListView()
                .navigationBarItems(trailing: Button("Add") {
                    self.showAddSheet = true
                })
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: $showAddSheet) {
            AddTodoView(showAddSheet: self.$showAddSheet)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
