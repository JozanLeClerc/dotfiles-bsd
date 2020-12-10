(defvar my/default-file-name-handler-alist file-name-handler-alist)

(defun my/set-max-gc-cons-threshold ()
  (setq gc-cons-threshold most-positive-fixnum)) ; 2^61 bytes
(defun my/set-default-gc-cons-threshold ()
  (run-at-time 1 nil
               (lambda () (setq gc-cons-threshold 16777216)))) ; 16 Mb

(defun my/erase-file-name-handler-alist ()
  (setq file-name-handler-alist nil))
(defun my/restore-file-name-handler-alist ()
  (setq file-name-handler-alist my/default-file-name-handler-alist))

(my/set-max-gc-cons-threshold)
(my/erase-file-name-handler-alist)
(add-hook 'emacs-startup-hook 'my/set-default-gc-cons-threshold)
(add-hook 'emacs-startup-hook 'my/restore-file-name-handler-alist)

(defun my/ad-timestamp-message (FORMAT-STRING &rest args)
  "Advice to run before `message' that prepends a timestamp to each message.
Activate this advice with:
  (advice-add 'message :before 'my/ad-timestamp-message)
Deactivate this advice with:
  (advice-remove 'message 'my/ad-timestamp-message)"
  (if message-log-max
      (let ((deactivate-mark nil)
            (inhibit-read-only t))
        (with-current-buffer "*Messages*"
          (goto-char (point-max))
          (if (not (bolp))
              (newline))
          (insert (format-time-string "[%F %T.%3N] "))))))
(advice-add 'message :before 'my/ad-timestamp-message)
