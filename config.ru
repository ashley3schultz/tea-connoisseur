require './config/environment'

use Rack::MethodOverride

use PostController
use TeaController
use UserController
run ApplicationController
