//
//  Installer.swift
//  MVVM templates
//
//  Created by Amir Hormozi ( Behtis ) on 11/21/22.
//

import Foundation

let templateName = "MVVM Module.xctemplate"
let destinationRelativePath = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application"

func ShowStatus(_ message:Any){
    print("====================================")
    print(" My Repository : https://github.com/amir-hormozi ")
    print("====================================")

    print("\(message)")
    print("====================================")
}

func installTemplates(){

    let fileManager = FileManager.default
    let destinationPath = destinationRelativePath //bash(command: "xcode-select", arguments: ["--print-path"]).appending(destinationRelativePath)
    do {
        if !fileManager.fileExists(atPath:"\(destinationPath)/\(templateName)"){

            try fileManager.copyItem(atPath: templateName, toPath: "\(destinationPath)/\(templateName)")

            ShowStatus("✅  MVVM Templates installed succesfully. Good Luck 🙂")

        }else{

            try _ = fileManager.replaceItemAt(URL(fileURLWithPath:"\(destinationPath)/\(templateName)"), withItemAt: URL(fileURLWithPath:templateName))

            ShowStatus("✅  MVVM Templates has been replaced succesfully. Good Luck 🙂")
        }
    }
    catch let error as NSError {
        ShowStatus("❌  Ooops! Something went wrong 😡 : \(error.localizedFailureReason!)")
    }
}

func shell(launchPath: String, arguments: [String]) -> String
{
    let task = Process()
    task.launchPath = launchPath
    task.arguments = arguments

    let pipe = Pipe()
    task.standardOutput = pipe
    task.launch()

    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: String.Encoding.utf8)!
    if output.count > 0 {
        //remove newline character.
        let lastIndex = output.index(before: output.endIndex)
        return String(output[output.startIndex ..< lastIndex])
    }
    return output
}

func bash(command: String, arguments: [String]) -> String {
    let whichPathForCommand = shell(launchPath: "/bin/bash", arguments: [ "-l", "-c", "which \(command)" ])
    return shell(launchPath: whichPathForCommand, arguments: arguments)
}

installTemplates()
