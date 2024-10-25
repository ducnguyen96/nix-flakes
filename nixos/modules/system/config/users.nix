{pkgs, ...}: {
  users.users.duc = {
    isNormalUser = true;
    initialPassword = "1";
    shell = pkgs.zsh;
    uid = 1000;

    extraGroups = [
      "adbusers"
      "audio"
      "docker"
      "input"
      "libvirtd"
      "qemu-libvirtd"
      "networkmanager"
      "plugdev"
      "video"
      "ydotool"
      "wheel"
      "i2c"
      "wireshark"
    ];

    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIPYn9pB4ZpM4el5gEoTl5uTQJldnbPtQQHS2OZWJY4t levinguyen.dl@gmail.com"
    ];
  };
}
