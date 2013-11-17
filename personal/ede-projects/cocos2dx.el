;;; cocos2dx.el --- Configuration for Rumble project
;;; Commentary:
;; Configuration for Rumble project
;;; Code:
(require 'ede/cpp-root)

(defvar project-dir "")
(defvar cocos2dx-dir "/opt/cocos2d-x/cocos2dx")
(defvar cocosdenshion-dir "/opt/cocos2d-x/CocosDenshion")
(defvar extensions-dir "/opt/cocos2d-x/extensions")

(ede-cpp-root-project ""
                      :name ""
                      :version "0.1"
                      :file (concat project-dir "/README.md")
                      :include-path '("/"
                                      "/proj.linux"
                                      "/Classes"
                                      )
                      :system-include-path `(,(concat cocos2dx-dir "/")
                                             ,(concat cocos2dx-dir "/include/")
                                             ,(concat cocos2dx-dir
                                                      "/kazmath/include/")
                                             ,(concat cocos2dx-dir "/platform/")
                                             ,(concat cocos2dx-dir
                                                      "/platform/linux/")
                                             ,(concat cocos2dx-dir
                                                      "/platform/third_party/linux/")
                                             ,(concat cocos2dx-dir
                                                      "/platform/third_party/linux/libfreetype2/")
                                             ,(concat cocos2dx-dir "/cocoa/")
                                             ,(concat cocos2dx-dir
                                                      "/platform/third_party/linux/glew-1.7.0/glew-1.7.0/include/")
                                             ,(concat cocos2dx-dir
                                                      "/platform/third_party/linux/libxml2/")
                                             ,(concat cocos2dx-dir
                                                      "/platform/third_party/linux/libjpeg/")
                                             ,(concat cocosdenshion-dir "/include/")
                                             ,(concat cocos2dx-dir "/extensions/"))
                      :targets
                      (list
                       (ede-cpp-root-target ""
                                            :name ""
                                            :path ""
                                            :source '("Classes/AppDelegate.cpp"
                                                      "linux/main.cpp")
                                            :versionsource '("Classes/AppDelegnate.h"
                                                             )))
                      :spp-table '(("CC_DLL" . "")
                                   ("EXPORT_DLL" . "")
                                   ("DEBUG" . 1)
                                   ("LINUX" . 1)
                                   ("COCOS2D_DEBUG" . 1))
                      :spp-files  `(,(concat cocos2dx-dir
                                             "/platform/linux/CCPlatformDefine.h")
                                    ,(concat cocos2dx-dir
                                             "/platform/CCPlatformMacros.h")
                                    ,(concat cocos2dx-dir
                                             "/platform/CCPlatformConfig.h"))
                      :compile-command (concat "make -C " project-dir "proj.linux/"))

(provide 'rumble)
;;; cocos2dx.el ends here
