## Language Manager

### allows you to control your app language indepentent from iOS language

* supports live language change

* The first time the user launches the app it tries to adapt to system language ( if it's supported  )
* changes controls RTL and LTR automatically ( with out the need to restart the app )
* it also can be used to check current app language

## Using 

set default language in AppDelegate and set call `firstTimeLanguageSettings` 

`LanguageManager.defaultLanguage = .en  
LanguageManager.firstTimeLanguageSetting()`

if you want a control to change it's directions dynamically from RTL and LTR you just use 
`.supportLanguageDirection = true` 



## Installation

`pod install LanguageManager` 

Feel Free to contribute . 

###TODO Write complete documentation 
