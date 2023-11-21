import subprocess
import os
import stat

script_path = "./gitcrypt_unlock.sh"
current_permissions = os.stat(script_path).st_mode

# Make the script executable by adding the execute permissions
# Add execute permissions for user, group, and others
new_permissions = current_permissions | stat.S_IXUSR | stat.S_IXGRP | stat.S_IXOTH

# Apply the new permissions
os.chmod(script_path, new_permissions)

print(subprocess.run([script_path]))