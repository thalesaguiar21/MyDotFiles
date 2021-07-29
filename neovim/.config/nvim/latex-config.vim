Commands:
- TexlabBuild: Build the current buffer
- TexlabForward: Forward search from current position

Default Values:
  cmd = { "texlab" }
  filetypes = { "tex", "bib" }
  root_dir = /home/thales/.cargo/bin/texlab
  settings = {
    texlab = {
      auxDirectory = ".",
      bibtexFormatter = "texlab",
      build = {
        args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
        executable = "latexmk",
        isContinuous = false
      },
      chktex = {
        onEdit = true,
        onOpenAndSave = true 
      },
      diagnosticsDelay = 300,
      formatterLineLength = 80,
      forwardSearch = {
        args = {}
      }
      latexFormatter = "latexindent",
      latexindent = {
          modifyLineBreaks = true 
      }
    }
  }
