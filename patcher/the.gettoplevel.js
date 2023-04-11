autowatch = 1;
outlets = 2;

var patch = this.patcher
var hierarchy = []
var target = jsarguments[1]

function get_parent(){
  var prev = 0;
  var owner = this.patcher.box;
  hierarchy = [ this.patcher ]
  while (owner) {
    prev = owner;
    hierarchy.push(owner.patcher)
    owner = owner.patcher.box;
  }
  outlet(0,hierarchy.length)
  post("the.gettopevel • patcher level:",hierarchy.length,'\n')
  var path = []
  hierarchy.forEach(function(x,i) {
    if (i == 0) path.push("("+x.name+")")
    else path.push(x.name)
    if (i !== hierarchy.length-1) path.push("<")
    var layer = []
    for (p=0;p<i;p++){
      layer[p] = "—"
    }
    if (i == 0) post("      ",i,layer,x.name,'(thispatcher)\n')
    else if (i == hierarchy.length-1) post("      ",i,layer,x.name,'(toplevel)\n')
    else post("      ",i,layer,x.name,'\n')
  })
  outlet(1,path)
}

function msg_int(i){
  if (i > 0 && i < hierarchy.length){
    // post(hierarchy[i].name,'\n')
    hierarchy[i].message("front")
  }
}

get_parent()
if (typeof target === "number") msg_int(target)

function loadbang(){
  outlets = 2;
}
