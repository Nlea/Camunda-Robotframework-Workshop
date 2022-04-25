*** Settings ***
Documentation     Filling out survey about coffee type
Library           RPA.Browser.Selenium
Library           random


*** Tasks ***
Fill out coffee type survey
    Open Available Browser    https://www.buzzfeed.com/rileyroach/which-coffee-are-you-572dyo73ow
    Title Should Be    What Type Of Coffee Are You Quiz

    Wait Until Element Is Visible   //*[@role="dialog"]
    Click Button      //button[contains(.,"AGREE")]

    FOR    ${INDEX}    IN RANGE    1    10
        ${randomNumber}=     Evaluate  random.randint(1,6)   random
        Scroll Element Into View    //section[@aria-label="Quiz"]/ul/li[${INDEX}]/fieldset//li[${randomNumber}]
        Click Element    //section[@aria-label="Quiz"]/ul/li[${INDEX}]/fieldset//li[${randomNumber}]
        Log    ${INDEX} "and" ${randomNumber}
        Sleep    1
    END

    ${result}=    Get Element Attribute    xpath://*[@class="resultTitle__2SVjS"]    innerHTML
    Log    ${result}