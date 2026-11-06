{
	self,
	inputs,
	...
}: {
	flake.nixosModules.lazygit = {
		pkgs,
		lib,
		...
	}: {
		programs.lazygit = {
			enable = true;
		};
	};
}
