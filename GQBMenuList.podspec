Pod::Spec.new do |s|
s.name         = "GQBMenuList" # 项目名称
s.version      = "1.0.1"        # 版本号 与 你仓库的 标签号 对应
s.license      = "MIT"          # 开源证书
s.summary      = "ios 横向滚动菜单" # 项目简介

s.homepage     = "https://github.com/shuyangxiaobao/GQBMenuList" # 你的主页
s.source       = { :git => "https://github.com/shuyangxiaobao/GQBMenuList.git", :tag => "#{s.version}" }#你的仓库地址，不能用SSH地址
s.source_files = "GQBMenuList/*.{h,m}" # 你代码的位置， GQBMenuList/*.{h,m} 表示 GQBMenuList 文件夹下所有的.h和.m文件
s.requires_arc = true # 是否启用ARC
s.platform     = :ios, "8.0" #平台及支持的最低版本
s.frameworks   = "UIKit", "Foundation" #支持的框架
s.dependency 'SDWebImage', '~> 5.0.4'
# User
s.author             = { "戈强宝" => "825065886@qq.com" } # 作者信息
end
