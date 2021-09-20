(defvar cs-code-mode-hook nil)

(defvar cs-code-mode-map
  (let ((map (make-keymap)))
    (define-key map "\C-j" 'newline-and-indent)
    map)
  "Keymap for C# Code major mode")

(add-to-list 'auto-mode-alist '("\\.cs\\'" . cs-code-mode))

(defconst cs-code-font-lock-keywords-1
  (list '("\\<\\(a\\(?:bstract\\|s\\)\\|b\\(?:ase\\|ool\\|reak\\|yte\\)\\|c\\(?:a\\(?:se\\|tch\\)\\|h\\(?:ar\\|ecked\\)\\|lass\\|on\\(?:st\\|tinue\\)\\)\\|d\\(?:e\\(?:cimal\\|fault\\|legate\\)\\|o\\(?:uble\\)?\\)\\|e\\(?:lse\\|num\\|vent\\|x\\(?:plicit\\|tern\\)\\)\\|f\\(?:alse\\|i\\(?:nally\\|xed\\)\\|loat\\|or\\(?:each\\)?\\)\\|goto\\|i\\(?:mplicit\\|nt\\(?:er\\(?:face\\|nal\\)\\)?\\|[fns]\\)\\|lo\\(?:ck\\|ng\\)\\|n\\(?:amespace\\|ew\\|ull\\)\\|o\\(?:bject\\|perator\\|ut\\|verride\\)\\|p\\(?:arams\\|r\\(?:ivate\\|otected\\)\\|ublic\\)\\|re\\(?:adonly\\|f\\|turn\\)\\|s\\(?:byte\\|ealed\\|hort\\|izeof\\|t\\(?:a\\(?:\\(?:ckallo\\|ti\\)c\\)\\|r\\(?:ing\\|uct\\)\\)\\|witch\\)\\|t\\(?:h\\(?:is\\|row\\)\\|r\\(?:ue\\|y\\)\\|ypeof\\)\\|u\\(?:int\\|long\\|n\\(?:checked\\|safe\\)\\|s\\(?:hort\\|ing\\)\\)\\|v\\(?:irtual\\|o\\(?:id\\|latile\\)\\)\\|while\\)\\>". font-lock-builtin-face)
        '("\\('\\w*'\\)" . font-lock-variable-name-face))
  "Minimal highlighting expressions for C# Code mode")

(defvar cs-code-font-lock-keywords cs-code-font-lock-keywords-1
  "Default highlighting expressions for C# Code mode")
