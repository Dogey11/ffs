module ffs

import v.pref
import os

const user = ["USERNAME", "USER"]
const home = ["USERPROFILE", "HOME"]

pub fn os_str() string
{
	return pref.get_host_os().str().to_lower()
}

pub fn os_int() int
{
	match os_str()
	{
		"windows" { return 0 }
		"macos" { return 1 }
		"linux" { return 1 }
		else { return -1 }
	}
}

pub fn user() string
{
	return os.getenv(home[os_int()])
}

pub fn desktop() string
{
	if os_int() == 0 && is_local() { return "${user()}\\OneDrive\\Desktop" }
	else { return "${user()}\\Desktop" }
}