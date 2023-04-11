autowatch = 1;

var find = new RegExp(/.+(\.mp3)$/g)

function anything(){
  post(messagename,find.test(messagename),'\n')
}
