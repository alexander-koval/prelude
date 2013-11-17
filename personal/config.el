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
 )


;;; config.el ends here
