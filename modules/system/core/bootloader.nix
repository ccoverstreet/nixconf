{
	self,
	inputs,
	...
}: {
	flake.nixosModules.bootloader = {
		pkgs,
		lib,
		...
	}: {
		boot = {
			loader = {
				timeout = 2;
				efi = {
					canTouchEfiVariables = true;
				};
				systemd-boot = {
					enable = true;
				};
			};
			kernelPackages = pkgs.linuxPackages_latest;
		};
	};
}

