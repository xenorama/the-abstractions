max.clearmaxwindow();

autowatch = 1;

var obj_box = this.patcher;
obj_box.setattr("varname",jsarguments[1])
var obj_name = obj_box.getattr("varname");
var sigval = Math.random();

// this.patcher.parentpatcher.message("script","replace",obj_name,"newex",0,0,190,12,"sig~",sigval)

post(obj_name)
