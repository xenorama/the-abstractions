autowatch = 1
max.clearmaxwindow()

var dict, regex
var test = "plumber"
// var path = ""
var step = 0

function dictionary(u){
  dict = new Dict(u)
}

function find(rgx){
  if (dict instanceof Dict){
    regex = new RegExp(rgx,"gi")
    step = 0
    find_keys(dict)
  }
}

find_keys.local = 1
function find_keys(u){
  // if (step == 0) path = ""
  var keys = u.getkeys()
  post(step,'\n')
  step++
  if (!(keys instanceof Array)) keys = [keys]
  for (k in keys) {
    step = 1
    // path = path+"::"+keys[k]
    // post(path,'\n')
    var subkeys = u.get(keys[k])
    if (subkeys instanceof Dict) find_keys(subkeys)
    else {
      if (subkeys instanceof Array) {
        for (s in subkeys) {
          // path = path+"::"+subkeys[s]
          if (regex.test(subkeys[s])) /*post(subkeys[s],path,'\n')*/ post(dict.get("info::audiofile"),'\n')
        }
      }
      else if (regex.test(subkeys)) {
        // path = path+"::"+subkeys
        // post(subkeys,path,'\n')
        post(dict.get("info::audiofile"),'\n')
      }
      // step = 1
    }
    // step = 0
  }
  // step = 0
}
