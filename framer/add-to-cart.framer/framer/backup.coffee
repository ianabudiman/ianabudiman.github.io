background = new Layer 
	x:0, y:0, width:750, height:1334, image:"images/PLP-page.png"
	
cartIcon = new Layer 
	x:628, y:375, width:76, height:64, image:"images/cart-icon.png"
	
loading = new Layer 
	x:625, y:365, width:72, height:72, 
	image:"images/loading.png",
	opacity: 0

itemCount = new Layer 
	x:620, y:365, width:81, height:82, 
	image:"images/edit-button1.png",
	opacity: 0
	
cartCount = new Layer
	x:690, y:79, width:15, height:30, opacity:0
	
cartCount.html ="<span style='color:#444;font-size:24px'>1</span>"
cartCount.backgroundColor = ""

cartIcon.on Events.Click, ->
	cartIcon.opacity = 0
    	
cartIcon.on Events.Click, ->
	loading.opacity = 1
	loading.animate
		properties:
 			rotation: 360
 		curve: "linear"
 		time: 1
 		
 loading.on Events.AnimationEnd, ->
	 itemCount.opacity = 1
	 cartCount.opacity = 1