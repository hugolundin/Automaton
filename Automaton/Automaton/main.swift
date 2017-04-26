//
//  main.swift
//  Automaton
//
//  Created by Hugo Lundin on 2017-04-26.
//  Copyright © 2017 Hugo Lundin. All rights reserved.
//

import Foundation

struct State {
    let label: String
    
    init(_ label: String) {
        self.label = label
    }
}

protocol Automaton {
    var states: [State]      { get set }
    var symbols: [String]    { get set }
    var initial: State       { get set }
    var final: [State]       { get set }
}

struct DFA: Automaton {
    var states: [State]
    var symbols: [String]
    var transition: (State, ([String]) -> State)
    var initial: State
    var final: [State]
    
    init(states: [State], symbols: [String], transition: (State, ([String]) -> State), initial: State, final: [State]) {
        self.states     = states
        self.symbols    = symbols
        self.transition = transition
        self.initial    = initial
        self.final      = final
    }
}

let dfa = DFA(states: [State("q1"), State("q2")], symbols: ["0", "1"], transition: nil, initial: State("q1"), final: [State("q2")])



