module Main where

import Prelude

import Data.Foldable (traverse_)
import Effect (Effect)
import Effect.Aff (launchAff_)
import Effect.Class (liftEffect)
import Jelly.Aff (awaitBody)
import Jelly.Component (Component, text)
import Jelly.Element as JE
import Jelly.Hooks (runHooks_)
import Jelly.Hydrate (mount)
import Jelly.Prop ((:=))

main :: Effect Unit
main = launchAff_ do
  appMaybe <- awaitBody
  liftEffect $ runHooks_ $ traverse_ (mount component) appMaybe

component :: forall m. Component m
component = do
  header
  mainComponent

header :: forall m. Component m
header = do
  JE.header [] do
    text "momee.mt"

mainComponent :: forall m. Component m
mainComponent = do
  JE.main [] do
    educational
    software
    oss
    writing
    work_experience
    past_activity

educational :: forall m. Component m
educational = do
  JE.h2 [] do
    text "学歴"
  JE.ul [] do
    JE.li [] do
      text "筑波大学情報学群情報科学類 ソフトウェアサイエンス主専攻 (2022/04 - 現在)"
    JE.li [] do
      text "都立桜修館中等教育学校 (2016/04 - 2022/03)"

software_li :: String -> String -> String -> forall m. Component m
software_li name href stack = do
  JE.li [] do
    JE.a ["href" := href, "target" := "_blank", "rel" := "noopener noreferrer"] do
      text name 
    JE.ul [] do
      JE.li [] do
        text stack

software :: forall m. Component m
software = do
  JE.h2 [] do
    text "ソフトウェア"
  JE.ul [] do
    software_li "wascaml (2024)" "https://github.com/momeemt/wascaml" "OCaml, WebAssembly, Python"
    software_li "momee.mt (2024)" "https://github.com/momeemt/momee.mt" "PureScript, Jelly, Tailwind"
    software_li "Brack (2022-)" "https://github.com/brack-lang/brack" "Rust, WebAssembly"
    software_li "Sohosai (2022-2023)" "https://github.com/sohosai" "Rust, Nix, Terraform, Sakura Cloud, Auth0, E-mail"
    software_li "mock up (2021-2023)" "https://github.com/mock-up/mock-up" "Nim, FFmpeg, OpenGL"
    software_li "ffmpeg.nim (2021)" "https://github.com/momeemt/ffmpeg.nim" "Nim, FFmpeg"
    software_li "Piledit (2020-2021)" "https://github.com/motionline/piledit-frontend" "TypeScript, Vue, Electron"
    software_li "Unit (2020)" "https://github.com/momeemt/Unit" "Nim"
    software_li "Mifton (2019)" "https://github.com/momeemt/mifton" "Ruby, Ruby on Rails"

oss :: forall m. Component m
oss = do
  JE.h2 [] do
    text "OSS活動"
  JE.ul [] do
    JE.li [] do
      JE.a ["href" := "https://github.com/NixOS/nixpkgs"] do
        text "NixOS/nixpkgs (2024-)"

writing :: forall m. Component m
writing = do
  JE.h2 [] do
    text "執筆活動"
  JE.ul [] do
    JE.li [] do
      JE.a [] do
        text "筑波大学情報科学類 新歓パンフレット (2022-2023)"
    JE.li [] do
      JE.a [] do
        text "メタプログラミングNim (2022)"
    JE.li [] do
      JE.a [] do
        text "プログラミングNim (2021)"

work_experience :: forall m. Component m
work_experience = do
  JE.h2 [] do
    text "就労経験"
  JE.ul [] do
    JE.li [] do
      JE.a [] do
        text "LINEヤフー株式会社 インターンシップ (データベースエンジニア) (2024/09)"
    JE.li [] do
      JE.a [] do
        text "サイボウズ・ラボ株式会社 ラボユース (2024/06 - 現在)"
    JE.li [] do
      JE.a ["href" := "https://zenn.dev/momeemt/articles/pixiv-summer-boot-camp-2022"] do
        text "ピクシブ株式会社 インターンシップ (画像配信エンジニア) (2022/09)"
    JE.li [] do
      JE.a [] do
        text "インヴァスト株式会社 インターンシップ (フロントエンドエンジニア) (2022/01 - 08)"

past_activity :: forall m. Component m
past_activity = do
  JE.h2 [] do
    text "過去の活動"
  JE.ul [] do
    JE.li [] do
      text "セキュリティ・キャンプ全国大会2024 S09 サニタイザ自作ゼミ (2024)"
    JE.li [] do
      text "学園祭実行委員会 情報メディアシステム局 (2022-2023)"
    JE.li [] do
      text "筑波大学情報学群情報科学類 新入生歓迎委員会 (2022-2023)"
    JE.li [] do
      text "セキュリティ・ミニキャンプ in 山梨 2022 チューター (2022)"
    JE.li [] do
      text "未踏ジュニア (2021)"
    JE.li [] do
      text "情報科学の達人 (2021)"
    JE.li [] do
      text "セキュリティ・キャンプ全国大会2021 オンライン Y-I OS自作ゼミ (2021)"
    JE.li [] do
      text "SecHack365 学習駆動コース 坂井ゼミ (2020)"
    JE.li [] do
      text "理数研究ラボ (2019)"
    JE.li [] do
      text "Life is Tech! (2018-2019)"
    JE.li [] do
      text "Tiprint (2018-2019)"
