#include <godot_cpp/core/class_db.hpp>
#include <godot_cpp/classes/display_server.hpp>
#include <godot_cpp/variant/variant.hpp>
#include <godot_cpp/classes/window.hpp>
#include <godot_cpp/variant/utility_functions.hpp>
#include "mouse_passthrough.h"

using namespace godot;

void MousePassthrough::_bind_methods()
{
    ClassDB::bind_method(D_METHOD("_ready"), &MousePassthrough::_ready);
    ClassDB::bind_method(D_METHOD("enable_passthrough"), &MousePassthrough::enable_passthrough);
    ClassDB::bind_method(D_METHOD("disable_passthrough"), &MousePassthrough::disable_passthrough);
}

MousePassthrough::MousePassthrough()
{
    // Constructor implementation
}

MousePassthrough::~MousePassthrough()
{
    // Destructor implementation if needed
}

void MousePassthrough::enable_passthrough()
{
    // Enable mouse passthrough logic here
}

void MousePassthrough::disable_passthrough()
{
    // Disable mouse passthrough logic here
}


void MousePassthrough::_ready() {
    DisplayServer::HandleType handle = DisplayServer::HandleType(0);
    // Use 'Window' instead of 'NSWindow'
    Window* window = (Window*)DisplayServer::get_singleton()->window_get_native_handle(handle);

    // Check if window handle is valid
    if (window != nullptr) {
        // Successfully retrieved the native window handle, you can proceed with further logic
        UtilityFunctions::print("Successfully retrieved native window handle!");
    } else {
        UtilityFunctions::print("Failed to get native window handle!");
    }
}
