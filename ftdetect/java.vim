function! GetJavaFileClassIden()
  " get current file name, such as ApiExample.java and strip out '.java'
  let l:f = substitute(expand("%:t"), "\.java", "", "g")
  " already read out the first line, which has package def
  let l:package = substitute(getline(1), "package ", "", "")

  " concat package and file nane to be a full qualifier
  return substitute(package, ";", "", "") . "." . f
endfunction

function! RunFileWithMaven()
  let l:classpath = GetJavaFileClassIden()
  execute "!mvn exec:java -Dexec.mainClass=" . classpath
endfunction

command! -nargs=0 OG   :call     CocAction('runCommand', 'editor.action.organizeImport')
command! -nargs=0 JC   :call     CocAction('runCommand', 'java.workspace.compile')
command! -nargs=0 JR   :call     RunFileWithMaven()
