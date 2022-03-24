import Foundation

public struct Command {
  let keys: Array<String>
  let type: CommandType
  let answers: Array<String>
  let function: CommandFunction?
  
  init(key: Array<String>, type: CommandType, answers: Array<String> = [], function: CommandFunction?) {
    self.keys = key.map { $0.lowercased() }
    self.answers = answers
    self.type = type
    self.function = function
  }
}

public enum CommandType {
  case string, action
}

public enum CommandFunction {
  case none
}
