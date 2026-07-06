#!/bin/bash
cd "$(dirname "$0")"
PORT=8765
IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null || echo "לא נמצא")

clear
echo "======================================================"
echo "  🎮  שרת המשחקים של המשפחה פועל!"
echo "======================================================"
echo ""
echo "  במחשב הזה, פתחו דפדפן בכתובת:"
echo "     http://localhost:$PORT"
echo ""
echo "  בטלפון / אייפד / מחשב אחר (חייבים להיות על אותו WiFi!):"
echo "     http://$IP:$PORT"
echo ""
echo "  השאירו את החלון הזה פתוח כל עוד משחקים."
echo "  לסגירה: Ctrl+C, או פשוט לסגור את החלון."
echo "======================================================"
echo ""

open "http://localhost:$PORT" 2>/dev/null
python3 -m http.server "$PORT"
