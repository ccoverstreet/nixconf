{
	self,
	inputs,
	...
}: {
	flake.nixosModules.tmux = {
		pkgs,
		lib,
		...
	}: {
		programs.tmux = {
			enable = true;
			extraConfig = builtins.readFile ./tmux.conf;
		};
	};
}
