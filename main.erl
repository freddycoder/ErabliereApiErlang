-module(main). 
-import(erablieres,[service/3]).
-export([start/0]).

start() ->
   inets:start(),
   inets:start(httpd, [ 
      {modules, [ 
         mod_alias, 
         mod_auth, 
         mod_esi, 
         mod_actions, 
         mod_cgi, 
         mod_dir,
         mod_get, 
         mod_head, 
         mod_log, 
         mod_disk_log 
      ]}, 
      
      {port,8081}, 
      {server_name,"erabliereapi"}, 
      {server_root,"C://ErlangWebApi"}, 
      {document_root,"C://ErlangWebApi//tmp/htdocs"}, 
      {erl_script_alias, {"/Erablieres", [erablieres]}},
      {error_log, "error.log"}, 
      {security_log, "security.log"}, 
      {transfer_log, "transfer.log"}, 
      
      {mime_types,[ 
         {"html","text/html"}, {"css","text/css"}, {"js","application/x-javascript"} ]} 
   ]). 