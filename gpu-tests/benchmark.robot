*** Settings ***
Documentation               This is just a tutorial
Metadata                    VERSION     0.1
Library                     String
Library                     SeleniumLibrary
Library                     OperatingSystem
# Suite Setup                 ブラウザを開く
Suite Teardown              ブラウザを終了
Resource                    ./resources/common.robot

*** Test Cases ***
BASEMARK Web 3.0にアクセス
    Open Browser  https://web.basemark.com  ${BROWSER}  None  ${GRID_URL}

    Click Element  id:start

    Sleep  1200

    スクリーンショットを保存  basemark.png

    ブラウザを終了