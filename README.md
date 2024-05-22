## initrd Editor Documentation

**Overview:**

**initrd Editor** is a bash script designed to modify the contents of an initrd (initial ramdisk) file used in Linux systems. The script accepts a single positional variable, which can be either a relative or absolute path to the target initrd file. It provides a convenient way to manipulate the initrd contents for various purposes.

**Usage:**

```shell
$ ./initrdEdit.sh [initrd_path]
```

**Parameters:**

- `initrd_path`: The path to the target initrd file. It can be specified as a relative or absolute path.

**Functionality:**

- The script allows users to make modifications to the contents of the specified initrd file.
- It automates compiling and decompiling of initrds.
- It is adaptive to initrd from different versions of Ubuntu.
- Users can easily integrate `initrdEdit.sh` into their workflow to automate initrd modifications.

**Example:**

```shell
$ ./initrdEdit.sh /path/to/initrd.img
```

**License:**

`initrd Editor` is released under the MIT License. See the [LICENSE](https://raw.githubusercontent.com/enricolam/initrd-Editor/main/LICENSE) file for more details.

**Note:**

- This script is provided as-is without any warranty. Users are responsible for understanding the implications of modifying initrd files and should use it with caution.

For more information and updates, please visit the [GitHub repository](https://github.com/enricolam/initrd-Editor) for `initrdEdit.sh`.
