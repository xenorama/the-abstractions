max.clearmaxwindow();

var source = new Buffer(jsarguments[1])
var target = new PolyBuffer(jsarguments[1]+"_target")
var host = new Buffer(jsarguments[1]+"_target.1")

function spread(chans){
  target.clear();
  var samps = source.framecount()
  var source_chans = source.channelcount();
  target.appendempty(0,chans)
  target.send(1,"samps",samps)
  var ratio = 1 / ((chans-1)/source_chans);
  var multiplier = chans / source_chans;
  // post(ratio)
  var amps = [1]
  var amp = 1;
  for (k=1;k<chans;k++){
    amps[k] = amp * ratio / k;
    if (k >= chans-1) amps[k] = 0
  }
  post(amps,"\n")



for (c=0;c<source_chans;c++){
  // get single sample value in channel
  var d = c * multiplier;
  var dist = Math.abs(c-d)
  post(dist,'\n')
  // source.peek(c+1,s);
}


  // for (c=0;c<source_chans;c++){
  //   for (s=0;s<samps;s++){
  //     var val = source.peek(c+1,s);
  //     for (j=0;j<chans;j++){
  //       var val_atten = (c == 0) ? val * amps[j] : val * amps[chans-1-j]
  //       host.poke(j+1,s,val_atten)
  //     }
  //   }
  // }



}
