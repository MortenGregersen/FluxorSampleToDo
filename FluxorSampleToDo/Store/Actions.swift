/**
 * FluxorSampleToDo
 *  Copyright (c) Morten Bjerg Gregersen 2020
 *  MIT license, see LICENSE file for details
 */

import Fluxor
import Foundation

// MARK: - Fetching Todos

struct FetchTodosAction: Action {}

struct DidFetchTodosAction: Action {
    let todos: [Todo]
}

struct DidFailFetchingTodosAction: Action {
    let error: String
}

struct ClearFetchingErrorAction: Action {}

// MARK: - Handling Todos

struct AddTodoAction: Action {
    let title: String
}

struct CompleteTodoAction: Action {
    let todo: Todo
}

struct UncompleteTodoAction: Action {
    let todo: Todo
}

struct DeleteTodoAction: Action {
    let index: Int
}
