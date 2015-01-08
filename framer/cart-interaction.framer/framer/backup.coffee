# background image of cart
cartbg = new Layer 
	x:0, y:0, width:750, height:1334, image:"images/cart-page.png"

# edit circle button (2)
editbutton = new Layer 
	x:640, y:206, width:81, height:82, image:"images/edit-button.png"
	
editbutton.on Events.Click, -> 
	slider.animate 
    properties:
      x:102
      y:168
    curve: "ease"
    time: .5
    
# slider of (2)
slider = new Layer 
	x:750, y:168, width:648, height:161, image:"images/slide-edit.png"
    
# done button
done = new Layer 
	x:513, y:44, width:99, height:70, image:"images/done.png"

done.superLayer = slider

done.on Events.Click, -> 
	slider.animate 
    properties:
      x:750
      y:168
    curve: "ease"
    time: .5
