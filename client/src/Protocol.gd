extends Node

var client = WebSocketClient.new()
var is_ready: bool = false
var last_sent_time = OS.get_unix_time()

func _ready():
	client.connect("connection_closed", self, "_on_connection_closed")
	client.connect("connection_error", self, "_on_connection_error")
	client.connect("connection_established", self, "_on_connection_success")
	client.connect("data_received", self, "_on_data_received")
	client.connect_to_url("ws://localhost:7777")

func _on_connection_closed(was_clean):
	print("Connection closed")
	
func _on_connection_error():
	print("Connection encountered an error")
	
func _on_connection_success(agreed_protocol=""):
	is_ready = true
	print("Connection succeeded")
	
func _on_data_received():
	print("Got data from server: ", client.get_peer(1).get_packet().get_string_from_utf8())
	
func _process(delta):
		client.poll() # Note(charlie) this might block?
		if last_sent_time + 1 < OS.get_unix_time():
			client.get_peer(1).put_packet("Test packet".to_utf8())
			last_sent_time = OS.get_unix_time()
