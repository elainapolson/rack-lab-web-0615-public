require_relative 'config/environment'
require_relative 'app/controllers/serverport'
require_relative 'app/controllers/randomnumber'
require_relative 'app/controllers/erbmaker'
require_relative 'app/controllers/requestmethod'


use ErbMaker
use RandomNumber
use RequestMethod
use ServerPort
run Application.new 
