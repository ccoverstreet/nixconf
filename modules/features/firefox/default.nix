{
	inputs,
	moduleWithSystem,
	...
}: {
	flake.nixosModules.firefox = moduleWithSystem({
		pkgs,
		self',
		...
	}: {config, ...}: {
		config = {
			programs.firefox = {
				enable = true;
			};
		};
	});
}
