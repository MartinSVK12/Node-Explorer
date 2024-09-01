extends Node

func info(s) -> void:
	if EngineDebugger.is_active():
		var type := "INFO"
		var time := Time.get_time_string_from_system()
		if get_stack().size() > 1:
			var trace = get_stack()[1]
			var trace_name: String = trace["source"]
			trace_name = trace_name.replace("res://","").split("/")[-1]
			var trace_function: String = trace["function"]
			var trace_line: int = trace["line"]
			if multiplayer.has_multiplayer_peer() and multiplayer.multiplayer_peer is not OfflineMultiplayerPeer:
				if OS.has_feature("web"):
					print("[{0}] [{1}]  ({2}::{3}:{4}) [{6}] {5}".format([time,type,trace_name,trace_function,trace_line,s,multiplayer.get_unique_id()]))
				else:
					print_rich("[color=yellow][{0}][/color] [color=green][{1}][/color]  [color=cyan]({2}::{3}:{4})[/color] [color=magenta][{6}][/color] {5}".format([time,type,trace_name,trace_function,trace_line,s,multiplayer.get_unique_id()]))
			else:
				if OS.has_feature("web"):
					print("[{0}] [{1}]  ({2}::{3}:{4}) {5}".format([time,type,trace_name,trace_function,trace_line,s]))
				else:
					print_rich("[color=yellow][{0}][/color] [color=green][{1}][/color]  [color=cyan]({2}::{3}:{4})[/color] {5}".format([time,type,trace_name,trace_function,trace_line,s]))
	else:
		var type := "INFO"
		var time := Time.get_time_string_from_system()
		if  multiplayer.has_multiplayer_peer() and multiplayer.multiplayer_peer is not OfflineMultiplayerPeer:
			if OS.has_feature("web"):
				print("[{0}] [{1}] [{3}] {2}".format([time,type,s,multiplayer.get_unique_id()]))
			else:
				print_rich("[color=yellow][{0}][/color] [color=green][{1}][/color] [color=magenta][{3}][/color] {2}".format([time,type,s,multiplayer.get_unique_id()]))
		else:
			if OS.has_feature("web"):
				print("[{0}] [{1}] {2}".format([time,type,s,multiplayer.get_unique_id()]))
			else:
				print_rich("[color=yellow][{0}][/color] [color=green][{1}][/color] {2}".format([time,type,s,multiplayer.get_unique_id()]))
		
func warn(s) -> void:
	if EngineDebugger.is_active():
		var type := "WARN"
		var time := Time.get_time_string_from_system()
		if get_stack().size() > 1:
			var trace = get_stack()[1]
			var trace_name: String = trace["source"]
			trace_name = trace_name.replace("res://","").split("/")[-1]
			var trace_function: String = trace["function"]
			var trace_line: int = trace["line"]
			if  multiplayer.has_multiplayer_peer() and multiplayer.multiplayer_peer is not OfflineMultiplayerPeer:
				if OS.has_feature("web"):
					print("[{0}] [{1}]  ({2}::{3}:{4}) [{6}] {5}".format([time,type,trace_name,trace_function,trace_line,s,multiplayer.get_unique_id()]))
				else:
					print_rich("[color=yellow][{0}][/color] [color=orange][{1}][/color]  [color=cyan]({2}::{3}:{4})[/color] [color=magenta][{6}][/color] {5}".format([time,type,trace_name,trace_function,trace_line,s,multiplayer.get_unique_id()]))
			else:
				if OS.has_feature("web"):
					print("[{0}] [{1}]  ({2}::{3}:{4}) {5}".format([time,type,trace_name,trace_function,trace_line,s]))
				else:
					print_rich("[color=yellow][{0}][/color] [color=orange][{1}][/color]  [color=cyan]({2}::{3}:{4})[/color] {5}".format([time,type,trace_name,trace_function,trace_line,s]))
	else:
		var type := "WARN"
		var time := Time.get_time_string_from_system()
		if  multiplayer.has_multiplayer_peer() and multiplayer.multiplayer_peer is not OfflineMultiplayerPeer:
			if OS.has_feature("web"):
				print("[{0}] [{1}] [{3}] {2}".format([time,type,s,multiplayer.get_unique_id()]))
			else:
				print_rich("[color=yellow][{0}][/color] [color=orange][{1}][/color] [color=magenta][{3}][/color] {2}".format([time,type,s,multiplayer.get_unique_id()]))
		else:
			if OS.has_feature("web"):
				print("[{0}] [{1}] {2}".format([time,type,s]))
			else:
				print_rich("[color=yellow][{0}][/color] [color=orange][{1}][/color] {2}".format([time,type,s]))
	
func error(s) -> void:
	if EngineDebugger.is_active():
		var type := "ERROR"
		var time := Time.get_time_string_from_system()
		if get_stack().size() > 1:
			var trace = get_stack()[1]
			var trace_name: String = trace["source"]
			trace_name = trace_name.replace("res://","").split("/")[-1]
			var trace_function: String = trace["function"]
			var trace_line: int = trace["line"]
			if  multiplayer.has_multiplayer_peer() and multiplayer.multiplayer_peer is not OfflineMultiplayerPeer:
				if OS.has_feature("web"):
					print("[{0}] [{1}]  ({2}::{3}:{4}) [{6}]] {5}".format([time,type,trace_name,trace_function,trace_line,s,multiplayer.get_unique_id()]))
				else:
					print_rich("[color=yellow][{0}][/color] [color=red][{1}][/color] [color=cyan]({2}::{3}:{4})[/color] [color=magenta][{6}][/color] {5}".format([time,type,trace_name,trace_function,trace_line,s,multiplayer.get_unique_id()]))
			else:
				if OS.has_feature("web"):
					print("[{0}] [{1}]  ({2}::{3}:{4}) {5}".format([time,type,trace_name,trace_function,trace_line,s]))
				else:
					print_rich("[color=yellow][{0}][/color] [color=red][{1}][/color] [color=cyan]({2}::{3}:{4})[/color] {5}".format([time,type,trace_name,trace_function,trace_line,s]))
	else:
		var type := "ERROR"
		var time := Time.get_time_string_from_system()
		if  multiplayer.has_multiplayer_peer() and multiplayer.multiplayer_peer is not OfflineMultiplayerPeer:
			if OS.has_feature("web"):
				print("[{0}] [{1}] [{3}] {2}".format([time,type,s,multiplayer.get_unique_id()]))
			else:
				print_rich("[color=yellow][{0}][/color] [color=red][{1}][/color] [color=magenta][{3}][/color] {2}".format([time,type,s,multiplayer.get_unique_id()]))
		else:
			if OS.has_feature("web"):
				print("[{0}] [{1}] {2}".format([time,type,s]))
			else:
				print_rich("[color=yellow][{0}][/color] [color=red][{1}][/color] {2}".format([time,type,s]))
