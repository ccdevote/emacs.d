;;; init-org-jekyll.el --- init the org jekyll plugin

;; Copyright (C) 2014  Zhiyong Ma

;; Author: Zhiyong Ma <ccdevote@gmail.com>
;; Keywords: emacs,jekyll,blog

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require-package 'org-jekyll)
(setq org-publish-project-alist
      '(
        ("mblog-org"
         :base-directory "/home/soft/document/blog/org"
         :base-extension "org"
         :publishing-directory "/home/soft/document/blog"
         :recursive t
         :publishing-function org-publish-org-to-html
         :headline-levels 4
         :html-extension "html"
         :body-only t
         )
        ("mblog-static"
         :base-directory "/home/soft/document/blog/org/resources"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
         :publishing-directory "/home/soft/document/blog/resources"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("mblog":components("mblog-org" "mblog-static"))
        ))
(provide 'init-org-jekyll)
;;; init-org-jekyll.el ends here
