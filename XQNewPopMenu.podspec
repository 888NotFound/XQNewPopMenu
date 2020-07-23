Pod::Spec.new do |s|
    
    s.name         = "XQNewPopMenu"      #SDK名称
    s.version      = "0.1"#版本号
    s.homepage     = "https://github.com/SyKingW/XQNewPopMenu"  #工程主页地址
    s.license     = "MIT"  #协议类型
    s.summary      = "对 NewPopMenu 的封装, 给 OC 项目用"  #项目的简单描述
    s.author       = { "王兴乾" => "1034439685@qq.com" } #作者及联系方式
    
    s.ios.deployment_target  = "10.0" #平台及版本
    
    s.source       = { :git => "https://github.com/SyKingW/XQNewPopMenu", :tag => "#{s.version}"}   #工程地址及版本号
    
    s.requires_arc = true   #是否必须arc
    s.source_files = 'SDK/**/*.{swift}'    
    
    s.dependency 'NewPopMenu'
    
    s.swift_versions = ['4.0', '5.0']

end

