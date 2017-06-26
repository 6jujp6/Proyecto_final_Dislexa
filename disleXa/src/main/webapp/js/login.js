$('#regis').click(function(){
  $('.registro').fadeToggle('slow');
});

$(document).mouseup(function (e)
{
    var container = $(".registro");

    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0) // ... nor a descendant of the container
    {
        container.hide();
    }
});

$('#logis').click(function(){
	  $('.login').fadeToggle('slow');
	});

	$(document).mouseup(function (e)
	{
	    var container = $(".login");

	    if (!container.is(e.target) // if the target of the click isn't the container...
	        && container.has(e.target).length === 0) // ... nor a descendant of the container
	    {
	        container.hide();
	    }
	});