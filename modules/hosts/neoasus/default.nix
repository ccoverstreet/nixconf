{
	self,
	inputs,
	...
}: {
	flake.nixosConfigurations.neoasus = inputs.nixpkgs.lib.nixosSystem {
		system = "x86_64-linux";
		modules = with self.nixosModules; [
			neoasusConfiguration
			core
			git
			fish
			tmux
			nvim

			sway
			waybar

			firefox
#			rofi
			rofitabs
		];
	};
}
