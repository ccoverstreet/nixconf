{
	self,
	inputs,
	...
}: {
	flake.nixosmodules.nvim = {
		pkgs,
		lib,
		...
	}: {
		programs.nvim = {
			enable = true;
		};
	};
}
