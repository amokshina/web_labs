function printDOM(node, indent) {
    document.write(indent + node.nodeName);
    document.write("<br/>");
    for (let i = 0; i < node.children.length; i++) {
        printDOM(node.children[i], indent + "&nbsp;&nbsp;");
        console.log(node.children[i], indent + "&nbsp;&nbsp;");
    }
}