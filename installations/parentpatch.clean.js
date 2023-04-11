var parent = this.patcher.parentpatcher

function clean(){
  parent.clean()
  outlet(0,"bang")
}
