function toggleClassAttribut(node, wantedClass)
{
    node.className.match(new RegExp("[^|\\s]?(" + wantedClass + ")[!\\S]?", ''))
    ? node.className = node.className.replace(new RegExp("[^|\\s]?(" + wantedClass + ")[!\\S]?", 'g'), '').replace(new RegExp("(^\\s)", ''), '')
    : node.className += " " + wantedClass;
}

function switchEdit(btn)
{
    var editing = Boolean(btn.innerHTML.toLowerCase() == "ok");
    if(editing)
    {
        btn.innerHTML = "Edit";
        toggleClassAttribut(btn.parentNode, "editing");
    }
    else
    {
        btn.innerHTML = "Ok";
        toggleClassAttribut(btn.parentNode, "editing");
    }
    btn.parentNode.children[2].disabled = editing;
}
function validForm(form)
{
    for(var i=0; i < form.elements.length; i++)
        if(form.elements[i].hasAttribute('disabled'))
            document.getElementById(form.elements[i].id).disabled = false;
	
    return true;
}