/*
 *   Tokenizer.swift
 *
 *   Copyright 2016 Tony Stone
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 *
 *   Created by Tony Stone on 5/4/16.
 */
import Swift

internal protocol Token {
    func match(string: String) -> Range<String.Index>?
    func isNewLine() -> Bool
}

internal class Tokenizer<T : Token> {
    
    var stringStream: String
    var line = 0
    var column = 0
    
    init(string: String) {
        self.stringStream = string
        if self.stringStream.characters.count > 0 {
            line = 1
            column = 1
        }
    }
    
    func accept(_ token: T) -> String? {
        if let range = token.match(string: stringStream) {
            
            if token.isNewLine() {
                line += 1
                column = 1
            } else {
                column += stringStream.distance(from: range.lowerBound, to: range.upperBound)
            }
            let result = stringStream[range]
            
            stringStream.removeSubrange(range)
            
            return result
        }
        return nil
    }
    
    func expect(_ token: T) -> Bool {
        return token.match(string: stringStream) != nil
    }
}
