LOG_FILE="LogFile.txt"

# Define output file paths
LOGIN_ATTEMPTS_FILE="Failed.txt"
ERROR_MESSAGES_FILE="User.txt"
ACCEPTED_FILE="Accepted.txt"
# Use grep to filter login attempts from the log file
grep "Failed password" "$LOG_FILE" > "$LOGIN_ATTEMPTS_FILE"

# Use grep to filter login attempts from the log file
grep "Accepted password" "$LOG_FILE" > "$ACCEPTED_FILE"

# Extract attempted users and error messages using awk and sed
awk '{print $9}' "$LOGIN_ATTEMPTS_FILE" | sed 's/invalid//g' | sort | uniq > "$ERROR_MESSAGES_FILE"

# Display success message
echo "Login attempts extracted to $LOGIN_ATTEMPTS_FILE"
echo "Error messages extracted to $ERROR_MESSAGES_FILE"
echo "Accepted attempts extracted to $ACCEPTED_FILE"