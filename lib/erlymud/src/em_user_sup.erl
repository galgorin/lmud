-module(em_user_sup).

-behaviour(supervisor).

%% API
-export([start_link/0, start_child/1]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

start_link() ->
  supervisor:start_link({local, ?SERVER}, ?MODULE, []).

start_child(Conn) ->
  supervisor:start_child(?SERVER, [Conn]).

init([]) ->
  User = {em_user, {em_user, start_link, []},
          temporary, brutal_kill, worker, [em_user]},
  Children = [User],
  RestartStrategy = {simple_one_for_one, 0, 1},
  {ok, {RestartStrategy, Children}}.
