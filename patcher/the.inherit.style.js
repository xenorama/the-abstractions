autowatch = 1;

function bang(){
  if (this.patcher.parentpatcher) {
    var attrs = this.patcher.parentpatcher.getattrnames();
    for (var a in attrs){
      if ((/.*color/).test(attrs[a])) {
        var thisattr = this.patcher.parentpatcher.getattr(attrs[a]);
        var complex_color = thisattr.name; // dictionary ?
        if (complex_color == undefined) this.patcher.setattr(attrs[a],thisattr);
        else this.patcher.setattr(attrs[a],"dictionary",complex_color);
      }
    }
  }
}

function loadbang(){
  bang()
}
