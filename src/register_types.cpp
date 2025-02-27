#include "register_types.h"
#include "mouse_passthrough.h"

using namespace godot;

void initialize_mouse_passthrough_module() {
    ClassDB::register_class<MousePassthrough>();
}

void uninitialize_mouse_passthrough_module() {
    // Nada que limpiar
}
