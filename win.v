module ffs.win

import ffs
import os

pub fn is_local() bool
{
	if ffs.os_int() == 0
	{
		return !os.exists("${os.getenv(home[0])}\\OneDrive\\Desktop\\desktop.ini")
	}
}

fn appdata() string
{
	println()
}