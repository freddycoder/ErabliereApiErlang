-module(erablieres).
-export([service/3]).

service(SessionID, _Env, _Input) -> mod_esi:deliver(SessionID, [ 
   "Content-Type: application/json\r\n\r\n", "{\"id\": 1, \"nom\": \"Érablière A\"}" ]).
