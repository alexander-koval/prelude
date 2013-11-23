;;; init-semantic-mode.el --- Configuration for initialize my semantic configuration
;;; Commentary:
;; Configuration for initialize my custom ede projects
;;; Code:
(require 'semantic/bovine/c)
(require 'semantic/db-javap)
(require 'semantic/ia)
(require 'semantic/bovine/clang)

(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-local-symbol-highlight-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)

(add-to-list 'semantic-default-submodes 'global-semantic-show-unmatched-syntax-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-show-parser-state-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-edits-mode)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(semantic-mode t)
(semantic-load-enable-excessive-code-helpers)
;;(semantic-load-enable-semantic-debugging-helpers)
(when (cedet-ectag-version-check)
  (semantic-load-enable-primary-exuberent-ctags-support))
;;; Preprocessing Cocos2D-x source code for using by CEDET
;;
;;
(defvar cocos2dx-dir (concat (getenv "COCOS_ROOT") "cocos2dx"))
(defvar cocosdenshion-dir (concat (getenv "COCOS_ROOT") "CocosDenshion"))
(defvar extensions-dir (concat (getenv "COCOS_ROOT") "extensions"))

(semantic-add-system-include cocos2dx-dir 'c++-mode)
(semantic-add-system-include (concat cocos2dx-dir "/include") 'c++-mode)
(semantic-add-system-include (concat cocos2dx-dir "/cocoa") 'c++-mode)
;;(semantic-add-system-include (concat cocos2dx-dir "/tilemap_parallax_nodes") 'c++-mode)
(semantic-add-system-include (concat cocos2dx-dir "/kazmath/include") 'c++-mode)
(semantic-add-system-include (concat cocos2dx-dir "/platform") 'c++-mode)
(semantic-add-system-include (concat cocos2dx-dir "/platform/linux") 'c++-mode)
(semantic-add-system-include
 (concat cocos2dx-dir "/platform/third_party/linux") 'c++-mode)
(semantic-add-system-include
 (concat cocos2dx-dir "/platform/third_party/linux/libfreetype2") 'c++-mode)
(semantic-add-system-include
 (concat cocos2dx-dir "/platform/third_party/linux/libxml2") 'c++-mode)
(semantic-add-system-include
 (concat cocos2dx-dir "/platform/third_party/linux/libjpeg") 'c++-mode)
(semantic-add-system-include
 (concat cocos2dx-dir
         "/platform/third_party/linux/glew-1.7.0/glew-1.7.0/include") 'c++-mode)
(semantic-add-system-include (concat cocosdenshion-dir "/include") 'c++-mode)
(semantic-add-system-include extensions-dir 'c++-mode)
;;(add-to-list 'auto-mode-alist (cons cocos2dx-dir 'c++-mode))
(add-to-list 'semantic-lex-c-preprocessor-symbol-map '("CC_DLL" . ""))
(add-to-list 'semantic-lex-c-preprocessor-symbol-map '("EXPORT_DLL" . ""))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat cocos2dx-dir "/platform/linux/CCPlatformDefine.h"))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat cocos2dx-dir "/platform/CCPlatformMacros.h"))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat cocos2dx-dir "/platform/CCPlaformConfig.h"))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat cocos2dx-dir "/include/CCEventType.h"))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat cocos2dx-dir "/include/CCProtocols.h"))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat cocos2dx-dir "/include/ccConfig.h"))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat cocos2dx-dir "/include/ccMacros.h"))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat cocos2dx-dir "/include/ccTypeInfo.h"))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat cocos2dx-dir "/include/ccTypes.h"))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat cocos2dx-dir "/include/cocos2d.h"))

;;; Preprocessing Qt4 source code for using by CEDET
;;
;;
(defvar qt4-base-dir "/usr/include/qt4")
(semantic-add-system-include qt4-base-dir 'c++-mode)
(add-to-list 'auto-mode-alist (cons qt4-base-dir 'c++-mode))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat qt4-base-dir "/Qt/qconfig.h"))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat qt4-base-dir "/Qt/qconfig-dist.h"))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             (concat qt4-base-dir "/Qt/qglobal.h"))

(provide 'init-semantic-mode)
;;; init-semantic-mode.el ends here
