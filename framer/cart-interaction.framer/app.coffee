# background image of cart
cartbg = new Layer 
	x:0, y:0, width:750, height:1334, image:"images/cart-page.png"

# edit circle button (2)
editbutton1 = new Layer 
	x:640, y:206, width:81, height:82, image:"images/edit-button.png"
	
    
# slider of (2)
slider1 = new Layer 
	x:750, y:168, width:648, height:161, image:"images/slide-edit1.png"
    
# done button
done = new Layer 
	x:513, y:44, width:99, height:70, image:"images/done.png"

done.superLayer = slider1

done.on Events.Click, -> 
	slider1.animate 
    properties:
      x:750
      y:168
    curve: "ease"
    time: .5

editbutton2 = new Layer 
	x:640, y:367, width:81, height:82, image:"images/edit-button1.png"
	
editbutton2.on Events.Click, -> 
	slider2.animate 
    properties:
      x:102
      y:330
    curve: "ease"
    time: .5
    
slider2 = new Layer 
	x:750, y:330, width:648, height:161, image:"images/slide-edit.png"
	
# done button
done2 = new Layer 
	x:513, y:44, width:99, height:70, image:"images/done.png"

done2.superLayer = slider2

done2.on Events.Click, -> 
	slider2.animate 
    properties:
      x:750
      y:330
    curve: "ease"
    time: .5

editbutton1.on Events.Click, -> 
	slider1.animate 
    properties:
      x:102
      y:168
    curve: "ease"
    time: .5
    
editbutton1.on Events.TouchStart, -> 
    slider2.animate 
    properties:
      x:750
      y:330
    curve: "ease"
    time: .5
