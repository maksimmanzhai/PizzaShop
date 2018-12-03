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

	alert('Items in your cart: ' + view_list_of_items());
}

function view_list_of_items() 
{
	// var text = "";
	// var i;
	// for (var i = 0, len = localStorage.length; i < len; i++)
	// {
	// 	text = text + localStorage.key(i) + " => " + localStorage.getItem(localStorage.key(i)) + "; ";
	// }
	// alert(text);
	var cnt = 0;

	for (var i = 0; i < window.localStorage.length; i++) 
	{
		var key = window.localStorage.key(i); // getting key
		var value = window.localStorage.getItem(key); // getting value, analog from ruby hh[key] = x

		if (key.indexOf('product_') == 0)
		{
			cnt = cnt + value * 1;
		}

	}
	return cnt;
}
