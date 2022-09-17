function print_page(){
	
	var ButtonControl = document.getElementById("print-btn");
	
    	ButtonControl.style.visibility = "hidden";
    
    	window.print();
    
}

function refresh(){
	
    	window.location.reload();
    
}
