module Index where

import Prelude

import Jelly.Component (Component, text)
import Jelly.Element as JE
import Jelly.Prop ((:=))

software :: forall m. Component m
software = do
  JE.div ["class" := "mt-4"] do
    JE.h2 ["class" := "text-2xl"] do
      text "ソフトウェア"
    JE.div ["class" := "mt-2 text-slate-400"] do
      text "各項目はクリックして展開できます"
    JE.ul ["class" := "list-disc pl-4"] do
      portfolio
      wascaml
      brack
      sohosai
      mock_up
      ffmpeg_nim
      piledit
      unit_lib
      mifton

software_li :: forall m. String -> Component m -> Component m
software_li name comp = do
  JE.li ["class" := "mt-1"] do
    JE.details [] do
      JE.summary ["class" := "cursor-pointer select-none list-none"] do
        text name 
      comp

external_link :: forall m. String -> Component m -> Component m
external_link href children = do
  JE.a ["class" := "underline", "href" := href, "target" := "_blank", "rel" := "noopener noreferrer"] do
    children

wascaml :: forall m. Component m
wascaml = do
  software_li "wascaml (2024/05 - 08)" do
    JE.ul ["class" := "list-disc pl-4"] do
      JE.li [] do
        text "OCaml, WebAssembly, Python"
      JE.li [] do
        text "WebAssemblyターゲットのOCamlサブセットコンパイラ。Linked Listに対する非効率な操作を検出するパフォーマンスサニタイザ(PSan)を実装している。"
      JE.li [] do
        text "GitHub: "
        external_link "https://github.com/momeemt/wascaml" do
          text "momeemt/wascaml"

portfolio :: forall m. Component m
portfolio = do
  software_li "momee.mt (2024/08)" do
    JE.ul ["class" := "list-disc pl-4"] do
      JE.li [] do
        text "PureScript, Jelly, Tailwind"
      JE.li [] do
        text "GitHub: "
        external_link "https://github.com/momeemt/momee.mt" do
          text "momeemt/momee.mt"

brack :: forall m. Component m
brack = do
  software_li "Brack (2022/08 - 現在)" do
    JE.ul ["class" := "list-disc pl-4"] do
      JE.li [] do
        text "Rust, WebAssembly"
      JE.li [] do
        text "WebAssemblyで変換規則を拡張可能な括弧ベースの軽量マークアップ言語"
      JE.li [] do
        text "GitHub: "
        external_link "https://github.com/brack-lang/brack" do
          text "brack-lang/brack"
        text " w/"
        external_link "https://github.com/uekann" do
          text "@uekann"

sohosai :: forall m. Component m
sohosai = do
  software_li "Sohosai (2022/06 - 2023/10)" do
    JE.ul ["class" := "list-disc pl-4"] do
      JE.li [] do
        text "Rust, Nix, Terraform, Sakura Cloud, Auth0, Roundcube"
      JE.li [] do
        text "企画管理アプリケーションの機能開発・運用やメールシステムの開発"
      JE.li [] do
        text "GitHub: "
        external_link "https://github.com/sohosai" do
          text "sohosai"
        text " w/"
        external_link "https://github.com/raspi0124" do
          text "@raspi0124"
        text ", "
        external_link "https://github.com/puripuri2100" do
          text "@puripuri2100"
        text ", et al."

mock_up :: forall m. Component m
mock_up = do
  software_li "mock up (2021/03 - 2023/12)" do
    JE.ul ["class" := "list-disc pl-4"] do
      JE.li [] do
        text "Nim, FFmpeg, OpenGL, HLS, nginx"
      JE.li [] do
        text "YAMLで編集内容を記述してレンダリングを行う動画編集フレームワーク"
      JE.li [] do
        text "GitHub: "
        external_link "https://github.com/mock-up/mock-up" do
          text "mock-up/mock-up"

ffmpeg_nim :: forall m. Component m
ffmpeg_nim = do
  software_li "ffmpeg.nim (2021)" do
    JE.ul ["class" := "list-disc pl-4"] do
      JE.li [] do
        text "Nim, FFmpeg"
      JE.li [] do
        text "FFmpegのNim言語ラッパー"
      JE.li [] do
        text "GitHub: "
        external_link "https://github.com/momeemt/ffmpeg.nim" do
          text "momeemt/ffmpeg.nim"

piledit :: forall m. Component m
piledit = do
  software_li "Piledit (2020 - 2021)" do
    JE.ul ["class" := "list-disc pl-4"] do
      JE.li [] do
        text "TypeScript, Vue, Electron, C#, FFmpeg"
      JE.li [] do
        text "ビジュアルブロックを利用して編集する動画編集ソフトウェア"
      JE.li [] do
        text "GitHub: "
        external_link "https://github.com/motionline/piledit-frontend" do
          text "motionline/piledit-frontend"
        text " w/"
        external_link "https://github.com/kuro1215" do
          text "@kuro1215"

unit_lib :: forall m. Component m
unit_lib = do
  software_li "Unit (2020)" do
    JE.ul ["class" := "list-disc pl-4"] do
      JE.li [] do
        text "Nim"
      JE.li [] do
        text "国際単位系(SI)を型レベルで操作できるNimライブラリ"
      JE.li [] do
        text "GitHub: "
        external_link "https://github.com/momeemt/unit" do
          text "momeemt/unit"

mifton :: forall m. Component m
mifton = do
  software_li "Mifton (2019)" do
    JE.ul ["class" := "list-disc pl-4"] do
      JE.li [] do
        text "Ruby, Ruby on Rails"
      JE.li [] do
        text "Minecraft統合版ユーザを対象にしたSNS"
      JE.li [] do
        text "GitHub: "
        external_link "https://github.com/momeemt/mifton" do
          text "momeemt/mifton"
