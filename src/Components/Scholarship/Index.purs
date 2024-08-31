module Scholarship where

import Prelude

import ExternalLink (external_link)
import Jelly.Component (Component, text)
import Jelly.Element as JE
import Jelly.Prop ((:=))

scholarship_li :: forall m. String -> Component m -> Component m
scholarship_li name comp = do
  JE.li ["class" := "mt-1"] do
    JE.details' do
      JE.summary ["class" := "list-none cursor-pointer select-none"] do
        text name
      JE.ul ["class" := "list-disc ml-4"] do
        comp

scholarship :: forall m. Component m
scholarship = do
  JE.h2 ["class" := "text-2xl mt-4"] do
    text "奨学金"
  JE.ul ["class" := "list-disc ml-4 mt-2"] do
    scholarship_li "孫正義育英財団 正財団生 (2023/09 - 現在)" do
      JE.li' do
        external_link "https://masason-foundation.org/cpt_testimonial/%E6%B5%85%E7%94%B0%E7%9D%A6%E8%91%89/" do
          text "財団の紹介ページ"
    scholarship_li "孫正義育英財団 準財団生 (2022/09 - 2023/08)" do
      JE.li' do
        external_link "https://masason-foundation.org/cpt_testimonial/%E6%B5%85%E7%94%B0%E7%9D%A6%E8%91%89/" do
          text "財団の紹介ページ"
