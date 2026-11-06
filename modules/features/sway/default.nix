{
	inputs,
	moduleWithSystem,
	...
}: {
	flake.nixosModules.sway = moduleWithSystem({
		pkgs,
		self',
		...
	}: {config, ...}: {
		config = {
			programs.sway = {
				enable = true;
				#package = self'.packages.sway;
				extraPackages = with pkgs; [
					rofi
					foot
					killall
					waybar
				];
			};

			environment.etc."sway/config".source = ./config;


			services.xserver.enable = true;
			security.polkit.enable = true;

		};
		
	});
}
