# ---------------------------------------------
# GENERATED FILE 
# DO NOT EDIT
# ---------------------------------------------
{
    email koenigphil@gmail.com
    log {
        output stdout
    }
} 
{{range . }}{{.F}} {
    redir {{.T}}
    tls koenigphil@gmail.com
}
{{end}}## END OF GENERATION