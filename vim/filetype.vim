"*************************************************************************************************
" FileType Detection
"
"*************************************************************************************************

if exists('did_load_filetypes')
  finish
endif

augroup filetypedetect

  au BufNewFile,BufRead */playbooks/*.{yml,yaml}   setfiletype yaml.ansible
  au BufNewFile,BufRead */inventory/*              setfiletype ansible_hosts
  au BufNewFile,BufRead *.hcl                      setfiletype terraform
  au BufNewFile,BufRead yarn.lock                  setfiletype yaml
  au BufNewFile,BufRead */.kube/config             setfiletype yaml
  au BufNewFile,BufRead *.postman_collection       setfiletype json
  au BufNewFile,BufRead .tern-{project,port}       setfiletype json
  au BufNewFile,BufRead *.js.map                   setfiletype json
  au BufNewFile,BufRead .jsbeautifyrc              setfiletype json
  au BufNewFile,BufRead .eslintrc                  setfiletype json
  au BufNewFile,BufRead .jscsrc                    setfiletype json
  au BufNewFile,BufRead .babelrc                   setfiletype json
  au BufNewFile,BufRead .watchmanconfig            setfiletype json
  au BufNewFile,BufRead .buckconfig                setfiletype toml
  au BufNewFile,BufRead .flowconfig                setfiletype ini
  au BufNewFile,BufRead Jenkinsfile*               setfiletype groovy
  au BufNewFile,BufRead Tmuxfile,tmux/*.config     setfiletype tmux
  au BufNewFile,BufRead Brewfile                   setfiletype ruby
  au BufNewFile,BufRead *.ts                       setfiletype typescript
  au BufNewFile,BufRead *.tsx                      setfiletype typescript.tsx
  au BufNewFile,BufRead *.thrift                   setfiletype thrift
  au BufNewFile,BufRead *.avdl                     setfiletype avro-idl

augroup END

" vim: set foldmethod=marker ts=2 sw=2 tw=80 list noet :
