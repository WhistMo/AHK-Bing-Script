

TotalFileline = 3255
LoopCount = 32
LongSleepTime = 6000
ShortSleepTime = 2000

SafariLoopCount = 16



run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" http://www.bing.com
sleep, %LongSleepTime%

run "C:\Program Files (x86)\Opera\launcher.exe" -new-tab http://www.bing.com
sleep, %LongSleepTime%

run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" -new-tab http://www.bing.com
sleep, %LongSleepTime%

run "C:\Program Files (x86)\Safari\Safari.exe" http://www.bing.com
sleep, %LongSleepTime%


run "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" -new-tab http://www.bing.com
sleep, %LongSleepTime%


Loop, %LoopCount%
{
    Random, line, 1, %TotalFileline%
    FileReadLine, Content, C:\search-terms.txt, %line%
    if ErrorLevel
        break
    run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" -new-tab http://www.bing.com/search?q=%Content%
    sleep, %LongSleepTime%
    SendInput ^w
    sleep, %ShortSleepTime%


    Random, line, 1, %TotalFileline%
    FileReadLine, Content, C:\search-terms.txt, %line%
    if ErrorLevel
        break
    run "C:\Program Files (x86)\Safari\Safari.exe" http://www.bing.com/search?q=%Content%
    sleep, %LongSleepTime%   
    Send ( "!{F4}")
    sleep, %ShortSleepTime%


    Random, line, 1, %TotalFileline%
    FileReadLine, Content, C:\search-terms.txt, %line%
    if ErrorLevel
        break
    run "C:\Program Files (x86)\Opera\launcher.exe" -new-tab http://www.bing.com/search?q=%Content%
    sleep, %LongSleepTime% 
    SendInput ^w
    sleep, %ShortSleepTime%


    Random, line, 1, %TotalFileline%
    FileReadLine, Content, C:\search-terms.txt, %line%
    if ErrorLevel
        break
    run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" http://www.bing.com/search?q=%Content%
    sleep, %LongSleepTime%
    SendInput ^w
    sleep, %ShortSleepTime%

    Random, line, 1, %TotalFileline%
    FileReadLine, Content, C:\search-terms.txt, %line%
    if ErrorLevel
        break
    run "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" -new-tab http://www.bing.com/search?q=%Content%
    sleep, %LongSleepTime% 
    WinActivate , ahk_class MozillaWindowClass
    SendInput ^w
    sleep, %ShortSleepTime%



}


run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" http://www.bing.com/rewards/dashboard
sleep, %LongSleepTime%

run "C:\Program Files (x86)\Opera\launcher.exe" -new-tab http://www.bing.com/rewards/dashboard
sleep, %LongSleepTime%

run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" -new-tab http://www.bing.com/rewards/dashboard
sleep, %LongSleepTime%

run "C:\Program Files (x86)\Safari\Safari.exe" http://www.bing.com/rewards/dashboard
sleep, %LongSleepTime%


run "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" -new-tab http://www.bing.com/rewards/dashboard
sleep, %LongSleepTime%


return


    