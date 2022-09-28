import Foundation

let text = "The Facade is simple yet useful"
print(text)

let language = NLPFacade.dominantLanguage(for: text)
print(language)

let result = NLPFacade.patsOfSpeech(for: text)
print(result)
