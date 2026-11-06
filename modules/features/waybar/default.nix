{
	inputs,
	moduleWithSystem,
	...
}: {
	flake.nixosModules.waybar = moduleWithSystem({
		pkgs,
		self',
		...
	}: {config, ...}: {
		config = {
			programs.waybar = {
				enable = true;
			};
		};
	});
}
