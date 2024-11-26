//
//  FirstProjectTests.swift
//  FirstProjectTests
//
//  Created by Beat Rupp on 16.11.24.
//

import Testing
import ComposableArchitecture
@testable import FirstProject

@MainActor
struct FirstProjectTests {
    @Test
    func basics() async {
        let store = TestStore(initialState: CounterFeature.State()) {

          CounterFeature()

        }

        await store.send(.incrementButtonTapped)
        await store.send(.decrementButtonTapped)
    }
}
