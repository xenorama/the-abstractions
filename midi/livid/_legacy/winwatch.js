autowatch = 1;

var box = this.patcher.wind
// post(box.getattr("name"))

var objl = new MaxobjListener(box,"size",retrieve)
objl.silent = 0;

this.patcher.setattr("locked",!this.patcher.getattr("locked"))

function retrieve(data){
  post(data.value)
}

// post(this.patcher.wind.size)
