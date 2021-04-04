((nil . ((eval
          . (progn
              (setq lexical-binding t)
              (lexical-let (
                    (cd-source-dir (concat (projectile-project-root) "src/"))
                    (cd-publish-dir (concat (projectile-project-root) "public/")))
                
                (setq
                 org-publish-project-alist
                 `((
                    "(cons dev nil)"
                    :language "en"
                    :author "Inanna"
                    :exclude "level-.*\\|.*\.draft\.org"
                    :html-metadata-timestamp-format "%G-W%V-%u %H:%M"
                    :publishing-function org-html-publish-to-html
                    :html-html5-fancy t
                    :html-indent nil
                    :sitemap-title "Sitemap"
                    :auto-sitemap t
                    :base-directory ,cd-source-dir
                    :publishing-directory ,cd-publish-dir
                    :html-preamble t
                    :html-preamble-format '("en" "<a href=\"index.html\">MAIN INDEX</a> | <a href=\"sitemap.html\">SITEMAP</a> | <a href=\"https://github.com/cons-dev/website-src\">SOURCE CODE (git)</a>")
                    :html-postamble t
                    :html-postamble-format '("en" "<p class=\"date\">Last Modified: %C</p><p class=\"creator\">Generated Using: %c</p><p class=\"license\">Except where otherwise noted content on <a href=\"https://cons.dev\">cons.dev</a> is licensed under a <a href=\"https://creativecommons.org/licenses/by-sa/4.0/\" rel=\"license\">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p>")
                    
                    :html-head "<link href=\"site.css\" rel=\"stylesheet\" type=\"text/css\" />")))))))))
