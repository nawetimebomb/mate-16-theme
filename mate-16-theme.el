;;; mate-16-theme.el --- An Emacs theme done while drinking mate on a development session.

;; Copyright (C) 2025 Nahuel J. Sacchetti

;; Author: Nahuel J. Sacchetti <git@nsacchetti.com>
;; URL: http://github.com/nawetimebomb/mate-16-theme
;; Version: 1.0

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

;; I love to drink mate during my coding session, and this time I just wanted to change my Emacs theme,
;; since I had the previous one for a while, and I'm not a very big color guy, I went for a simple approach
;; and only used 16 colors to make it. Inspired in the default 4coder theme, Emacs immaterial-theme and
;; Argentine culture.

;;; Code:

(deftheme mate-16 "A theme made while drinking mate")

(defgroup mate-16-theme nil
  "Mate 16 Theme."
  :group 'faces
  :prefix "mate-16-"
  :link '(url-link :tag "GitHub" "http://github.com/nawetimebomb/mate-16-theme")
  :tag "Mate 16 Theme")

;;; Color Palette

(let ((background        "#070707")
      (foreground        "#a08563")
      (accent            "#0a0b62")
      (black             "#010101")
      (white             "#d2d2d2")
      (dark-gray         "#131313")
      (medium-dark-gray  "#373b41")
      (medium-light-gray "#616161")
      (light-gray        "#98a098")
      (red               "#e66250")
      (orange            "#e9865d")
      (green             "#6b8e23")
      (yellow            "#cd950c")
      (blue              "#2855c7")
      (magenta           "#b17dc1")
      (cyan              "#5aa0b3"))

  (custom-theme-set-faces
   'mate-16

   ;; Base Emacs
   `(default ((t (:background ,background :foreground ,foreground))))
   `(cursor ((t (:background ,yellow))))
   `(region ((t (:background ,accent))))
   `(highlight ((t (:background ,medium-dark-gray))))
   `(fringe ((t (:background ,dark-gray))))
   `(vertical-border ((t (:foreground ,dark-gray))))
   `(minibuffer-prompt ((t (:foreground ,foreground :weight bold))))
   `(line-number ((t (:foreground ,medium-light-gray :background ,black))))
   `(line-number-current-line ((t (:background ,dark-gray :foreground ,foreground))))
   `(hl-line ((t (:background ,accent :foreground ,foreground))))
   `(link ((t (:foreground ,cyan :underline t))))
   `(link-visited ((t (:foreground ,magenta :underline t))))

   ;; Programming
   `(font-lock-builtin-face ((t (:foreground ,light-gray))))
   `(font-lock-comment-face ((t (:foreground ,orange))))
   `(font-lock-constant-face ((t (:foreground ,cyan))))
   `(font-lock-doc-face ((t (:foreground ,green))))
   `(font-lock-fixme-face ((t (:foreground ,red :weight bold))))
   `(font-lock-function-name-face ((t (:inherit 'default))))
   `(font-lock-important-face ((t (:foreground ,blue :weight bold))))
   `(font-lock-keyword-face ((t (:foreground ,yellow))))
   `(font-lock-note-face ((t (:foreground ,green :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,magenta))))
   `(font-lock-string-face ((t (:foreground ,green))))
   `(font-lock-type-face ((t (:foreground ,magenta))))
   `(font-lock-variable-name-face ((t (:inherit 'default))))
   `(font-lock-warning-face ((t (:foreground ,red :weight bold))))

   ;; Mode Line
   `(mode-line ((t (:background ,foreground :foreground ,black :box nil))))
   `(mode-line-inactive ((t (:background ,dark-gray :foreground ,foreground :box nil))))

   ;; Search
   `(isearch ((t (:background ,white :foreground ,black :weight bold))))
   `(lazy-highlight ((t (:background ,accent :foreground ,white :weight bold))))
   `(match ((t (:inherit lazy-highlight))))

   ;; Org
   `(org-level-1 ((t (:foreground ,yellow :weight bold))))
   `(org-level-2 ((t (:foreground ,blue :weight bold))))

   ;; Parens
   `(show-paren-match ((t (:background ,nil :foreground ,white :weight bold))))
   `(show-paren-mismatch ((t (:background ,red :foreground ,white :weight bold))))

   ;; UI
   `(tooltip ((t (:background ,medium-light-gray :foreground ,black))))
   `(error ((t (:foreground ,red :weight bold))))
   `(success ((t (:foreground ,green :weight bold))))

   ;; Compilation and Flycheck
   `(flycheck-error ((t (:underline (:color ,red :style wave)))))
   `(compilation-info ((t (:foreground ,blue :inherit 'unspecified))))
   `(compilation-warning ((t (:foreground ,yellow :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,red))))
   `(compilation-mode-line-fail ((t (:foreground ,red :weight bold :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ( :foreground ,green :weight bold :inherit 'unspecified))))

   ;; Vertico
   `(vertico-current ((t (:inherit region))))))

;;; Footer

;; ;;;###autoload
;; (when load-file-name
;;   (let ((dir (file-name-directory load-file-name)))
;;     (unless (equal dir (expand-file-name "themes/" data-directory))
;;       (add-to-list 'custom-theme-load-path dir))))

(provide-theme 'mate-16)
