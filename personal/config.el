;;; config.el --- My configuration entry point
;;
;;; Commentary:
;;; Code:

(defvar java-home "/usr/lib/jvm/java-7-openjdk/")
(defvar android-sdk "/opt/android-sdk/")
(custom-set-variables
 '(cedet-android-sdk-root '(android-sdk))
 '(cedet-java-jdk-root '(java-home))
 '(cedet-java-classpath-extension `(,(concat java-home "jre/lib/rt.jar")
                                    ,(concat android-sdk "platforms/android-19/android.jar")
                                    ,(concat android-sdk "platforms/android-19/data/layoutlib.jar")))
 '(semanticdb-javap-classpath `(,(concat java-home "jre/lib/rt.jar")
                                ,(concat android-sdk "platforms/android-19/android.jar")
                                ,(concat android-sdk "platforms/android-19/data/layoutlib.jar")))
 ;; '(default ((t (:family "Source Code Pro" :foundry "adobe" :slant normal :weight semi-bold :height 123 :width normal))))
)
(custom-set-faces
 '(default ((t (:family "Source Code Pro" :foundry "adobe" :slant normal :weight semi-bold :height 123 :width normal))))
 '(flycheck-error ((t (:background "orange red")))))


;;; config.el ends here
