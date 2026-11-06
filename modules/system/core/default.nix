{
	self,
	inputs,
	...
}: {
	flake.nixosModules.core = {
		pkgs,
		lib,
		...
	}: let 
		modules = with self.nixosModules; [
			bootloader
			nix
			user
		];
	in {
		imports = modules;
		environment.systemPackages = with pkgs; [
			neovim
			tmux
			git
		];
	};
}
