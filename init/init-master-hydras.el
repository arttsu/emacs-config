;;; init-master-hydras.el --- Define and bind "master" hydras

;;; Commentary:
;;

;;; Code:

(defhydra my-hydra-settings (:color blue)
  "Settings"
  ("t" my-hydra-load-theme/body "Theme"))

(global-set-key (kbd "C-c s") 'my-hydra-settings/body)

(defhydra my-hydra-open-zk (:color blue)
  "Open a zettel"
  ("n" (find-file "~/zk/xing-news-data.org") "News Data")
  ("o" (find-file "~/zk/xing-operational-data-tracking.org") "ODT")
  ("t" (find-file "~/zk/xing-topic-classifier.org") "Topic Classifier"))

(defhydra my-hydra-open-bookmarks (:color blue)
  "Bookmarks"
  ("b" (find-file "~/journal/bookmarks.org") "Bookmarks")
  ("w" (find-file "~/journal/work-bookmarks.org") "Work bookmarks"))

(defhydra my-hydra-open-requests (:color blue)
  "Requests"
  ("c" (find-file "~/projects/xing/content/content-requests.http") "Content requests")
  ("n" (find-file "~/projects/xing/news-data/news-recommender-requests.http") "News recommender requests"))

(defhydra my-hydra-open (:color blue)
  "Open"
  ("b" my-hydra-open-bookmarks/body "Bookmarks")
  ("p" (find-file "~/nb/projects.org") "Projects")
  ("r" my-hydra-open-requests/body "Requests")
  ("w" (find-file "~/nb/work-projects.org") "Work projects")
  ("z" my-hydra-open-zk/body "Zettel"))

(global-set-key (kbd "C-c o") 'my-hydra-open/body)

(provide 'init-master-hydras)

;;; init-master-hydras.el ends here
