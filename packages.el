(defconst mermaid-layer-packages
  '(org ob-mermaid))

(defun mermaid-layer/init-ob-mermaid ()
  (use-package ob-mermaid
    :ensure t
    :config
    (setq ob-mermaid-cli-path mermaid-layer-cli-path)))

(defun mermaid-layer/post-init-org ()
  (spacemacs|use-package-add-hook org
    :post-config (add-to-list 'org-babel-load-languages '(mermaid . t))))
