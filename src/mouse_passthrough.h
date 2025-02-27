#ifndef MOUSE_PASSTHROUGH_H
#define MOUSE_PASSTHROUGH_H

#include <godot_cpp/classes/node.hpp>

namespace godot {

class MousePassthrough : public Node {
    GDCLASS(MousePassthrough, Node)

public:
    MousePassthrough();
    ~MousePassthrough();

    void enable_passthrough();
    void disable_passthrough();

    static void _bind_methods();
};

}

#endif // MOUSE_PASSTHROUGH_H
