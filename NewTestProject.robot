*** Settings ***
Library           SSHLibrary

*** Test Cases ***
NewTest01
    Log    Hello Guys !!!!

NewTest02
    Open Connection    172.26.160.170
    Login    debian    szymon29
    Sleep    2
    List Directory    /home/debian
    sleep    2
    Close COnnection

NewTest03
    Open Connection    172.26.160.170
    Login    debian    szymon29
    Sleep    3
    ${output}=    SSHLibrary.ExecuteCommand    java --version
    Sleep    3
    Close Connection
