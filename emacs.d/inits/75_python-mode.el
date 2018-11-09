(el-get-bundle pyenv)
(use-package pyenv
  :config
  ;; $PYTHONPATHをパスに追加
  (pyenv--setup)
  (add-hook 'python-mode-hook 'global-pyenv-mode)
  (setq pyenv-show-active-python-in-modeline nil))

(el-get-bundle py-autopep8)
(use-package py-autopep8
  :config
  ;; py-autopep8で1行あたり最大200文字まで許容する
  (setq py-autopep8-options '("--max-line-length=200"))
  ;; flycheckのflake8で1行あたり最大200文字まで許容する
  (setq flycheck-flake8-maximum-line-length 200)

  (add-hook 'python-mode-hook 'py-autopep8-enable-on-save))

(el-get-bundle elpy)
(use-package elpy
  :init
  (elpy-enable)
  (remove-hook 'elpy-modules 'elpy-module-flymake)
  (remove-hook 'elpy-modules 'elpy-module-highlight-indentation)
  
  (add-hook 'elpy-mode-hook 'highlight-indentation-current-column-mode)
  
  :config
  
  (setq elpy-rpc-backend "jedi")
  
  (when (executable-find "ipython")
    (elpy-use-ipython)))

(el-get-bundle company-jedi)
(use-package company-jedi
  :config
  (add-hook 'python-mode-hook 'jedi:setup)
  (setq jedi:complete-on-dot t)
  
  (defun config/enable-company-jedi ()
    (add-to-list 'company-backends 'company-jedi))
  
  (add-hook 'python-mode-hook 'config/enable-company-jedi))

(el-get-bundle py-isort)
(use-package py-isort
  :config
  (setq py-isort-options '("-m=3"))

  (defun py-isort-enable-on-save()
    (interactive)
    (add-hook 'before-save-hook 'py-isort-before-save))

  (add-hook 'python-mode-hook 'py-isort-enable-on-save))
