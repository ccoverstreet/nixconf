{
	inputs,
	moduleWithSystem,
	...
}: {
	flake.nixosModules.rofi = moduleWithSystem({
		pkgs,
		self',
		inputs',
		...
	}: {config, ...}: {
		config = {
			programs.rofi = {
				enable = true;
			};
		};
	});
}
