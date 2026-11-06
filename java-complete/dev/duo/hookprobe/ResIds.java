package dev.duo.hookprobe;

/**
 * Resource id constants referenced by the decompiled sources.
 *
 * The original APK compiled these into the app's own `R` class. The ids below
 * are the framework values for the referenced resources, so behaviour matches:
 * `layout.simple_list_item_1`, `id.message/background/progress`,
 * `attr.state_checked`, `drawable.ic_menu_info_details`, `color.transparent`.
 *
 * Named `ResIds` (not `R`) because a class named `R` would collide with the
 * sibling `r.java` on a case-insensitive filesystem.
 */
final class ResIds {
    private ResIds() {
    }

    static final class id {
        static final int background = 0x01020000;
        static final int message = 0x01020001;
        static final int progress = 0x01020002;

        private id() {
        }
    }

    static final class layout {
        static final int simple_list_item_1 = 0x01090000;

        private layout() {
        }
    }

    static final class attr {
        static final int state_checked = 0x01010000;

        private attr() {
        }
    }

    static final class drawable {
        static final int ic_menu_info_details = 0x01080000;

        private drawable() {
        }
    }

    static final class color {
        static final int transparent = 0x01060000;

        private color() {
        }
    }
}