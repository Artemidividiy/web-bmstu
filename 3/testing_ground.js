var root = [[1, 2], [3, 4, 5], [6]];
// ul = document.getElementById("u");
function dfs_entry(element) {
  Array.from(element.children).forEach((x) => dfs(x));
}
function dfs(element) {
  if (element.children) dfs_entry(element);
  else {
    var li = document.createElement("li");
    li.appendChild(document.createTextNode(element.tagName));
    console.log(element.tagName);
    ul.appendChild(li);
  }
}

function tree() {
  dfs_entry(root);
}
