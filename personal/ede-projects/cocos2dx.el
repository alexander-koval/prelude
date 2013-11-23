;;; cocos2dx.el --- Configuration for Cocos2d-x project
;;; Commentary:
;; Configuration for Cocos2d-x 2.x project
;;; Code:
(require 'ede/cpp-root)

(defvar project-dir "")
(defvar cocos2dx-dir (concat (getenv "COCOS_ROOT") "cocos2dx"))
(defvar cocosdenshion-dir (concat (getenv "COCOS_ROOT") "CocosDenshion"))
(defvar extensions-dir (concat (getenv "COCOS_ROOT") "extensions"))

(ede-cpp-root-project ""
                      :name ""
                      :version "0.1"
                      :file (concat project-dir "/README.md")
                      :include-path '("/"
                                      "/proj.linux"
                                      "/Classes")
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
                                             "/platform/CCPlatformConfig.h")
                                    ,(concat cocos2dx-dir
                                             "/include/ccConfig.h")
                                    ,(concat cocos2dx-dir
                                             "/include/ccMacros.h")
                                    ,(concat cocos2dx-dir
                                             "/include/cocos2d.h"))
                      :compile-command (concat "make -C " project-dir "proj.linux/"))

(custom-set-variables
 '(flycheck-clang-definitions '("LINUX=1"))
 '(flycheck-clang-include-path `(,(concat cocos2dx-dir "/")
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
                                 ,(concat cocos2dx-dir "/extensions/")))
 '(flycheck-clang-language-standard "c++11")
 '(flycheck-clang-warnings '("error")))

(provide 'cocos2dx.el)
;;; cocos2dx.el ends here
