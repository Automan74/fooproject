*** Keywords ***
Begin Web Test
    Open Browser                about:blank  ${BROWSER}
    Maximize Browser Window
Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go To                       ${URL}
Verify Page Loaded
    ${link_text} =              Get Text  id:title
    Should Be Equal             ${link_text}  Infotiv Car Rental

Search for Product
    [Arguments]                 ${search_term}  ${search_result}
    Enter Search Term           ${search_term}
    Submit Search
    Verify Search Completed     ${search_term}   ${search_result}

Enter Search Term
    [Arguments]                 ${search_term}
    Input Text                  id:twotabsearchtextbox  ${search_term}
Submit Search
    Click Button                xpath://*[@id="nav-search"]/form/div[2]/div/input

Verify Search Completed
    [Arguments]                 ${search_term}    ${search_result}
    ${result_text} =            Set Variable      results for "${search_term}"
    Should Be Equal             ${result_text}    ${search_result}

Choose item
    Sleep  3s
    Click Button                   xpath://button[@id="login"]
    Input Text                      id:email  555@telia.com
    Click Button                   xpath://button[@id="login"]
    Should Be Equal                 ${elem}
End Web Test
    Close Browser