#include <godot_cpp/core/class_db.hpp>
#include <godot_cpp/classes/display_server.hpp>
#include <godot_cpp/variant/array.hpp>
#include <godot_cpp/variant/string.hpp>
#include <godot_cpp/classes/node.hpp>
#include <godot_cpp/variant/variant.hpp>

using namespace godot;

class MousePassthrough : public Node {
    GDCLASS(MousePassthrough, Node);

protected:
    static void _bind_methods() {
        // Register methods here if needed
    }

public:
    // Constructor and other methods as needed

    void _ready() override {  // Adding 'override' keyword
        // Cast 0 to the correct HandleType based on DisplayServer's definition
        DisplayServer::HandleType handle = DisplayServer::HandleType(0);  // Adjust if HandleType is a different type

        // Use 'Window' instead of 'NSWindow'
        Window* window = (Window*)DisplayServer::get_singleton()->window_get_native_handle(handle);

        // Check if window handle is valid
        if (window != nullptr) {
            // Successfully retrieved the native window handle, you can proceed with further logic
        } else {
            UtilityFunctions::print("Failed to get native window handle!");  // Corrected to 'Godot::print()'
        }
    }
};
