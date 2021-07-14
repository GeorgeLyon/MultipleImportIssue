#!/bin/sh

PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"
PC_DIR="$PROJECT_DIR/pkg-config"
cat > "$PC_DIR/COne.pc" <<EOF
    prefix=$PROJECT_DIR

    Name: COne
    Description: COne
    Version: local
    Cflags: -I\${prefix}/include
    Libs:
EOF
cat > "$PC_DIR/CTwo.pc" <<EOF
    prefix=$PROJECT_DIR

    Name: CTwo
    Description: CTwo
    Version: local
    Cflags: -I\${prefix}/include
    Libs:
EOF