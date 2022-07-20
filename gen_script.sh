#!/bin/sh

SCRIPT=script.sh

if [ -n "$1" ]; then
	SCRIPT="$1"
fi

cat <<EOF > "$SCRIPT" 
#!/bin/sh

echo "start here" 
EOF

chmod a+x "$SCRIPT"

echo "Script $SCRIPT created."

