extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var add_life=100
var add_attack=100
var add_sold=100

var add_level=0
#是否可升级
var can_level_up=true
var level_display
var coin=1000
var coin_display
var books=0
var sound
var book_display_node
var need_coin_display_node
var have_books
var self_book=50
var attack_display
var sold_display
var life_display
var coin_anim
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("level_up")
	coin_anim=root.get_node("AnimationPlayer")
	#属性
	level_display=root.get_node("Panel2/to_level")
	attack_display=root.get_node("Panel3/attack")
	sold_display=root.get_node("Panel3/sold")
	life_display=root.get_node("Panel3/life")
	coin_display=root.get_node("coin/Label")
	have_books=get_parent().get_node("books")
	book_display_node=root.get_node("books_add/books")
	need_coin_display_node=root.get_node("book_root/need_coin")
	sound=root.get_node("sound/EnterSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if coin<0:
		coin=0
		can_level_up=false
		coin_anim.play("coin_not_enough")
		coin_display.text=str(0)
	if can_level_up==false:
		
		pass
	pass
func _input(event):
	if event is InputEventScreenTouch:
		if event.pressed==true:
			sound.play()
			books+=1
			self_book-=1
			add_life+=50
			add_attack+=50
			add_sold+=50
			coin-=100
			add_level+=1
			level_display.text="Lv"+str(add_level)
			coin_display.text=str(coin)
			attack_display.text="攻:20→"+str(add_attack)
			sold_display.text="防:20→"+str(add_sold)
			life_display.text="生命力:20→"+str(add_life)
			book_display_node.text=str(books)
			have_books.text="数量:"+str(self_book)
			need_coin_display_node.text="消耗金币:"+str(100*books)
	pass