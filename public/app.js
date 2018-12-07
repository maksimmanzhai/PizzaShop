function something() 
{
	var x = window.localStorage.getItem('bbb'); 	// x = hh['bbb']
	x = x * 1 + 1; 																// x = x + 1
	window.localStorage.setItem('bbb', x);				// hh['bbb'] = x
	alert(x);
}

function add_to_cart(id) 
{
	var key = 'product_' + id
	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);
}

function view_list_of_items() 
{
	var text = "";
	var i;
	for (var i = 0, len = localStorage.length; i < len; i++)
	{
		text = text + localStorage.key(i) + " => " + localStorage.getItem(localStorage.key(i)) + "; ";
	}
	alert(text);
	
}

function function_name(argument) {
	// body...
}