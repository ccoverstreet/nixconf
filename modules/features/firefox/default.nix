{
	inputs,
	moduleWithSystem,
	...
}: {
	flake.nixosModules.firefox = moduleWithSystem({
		pkgs,
		self',
		inputs',
		...
	}: {config, ...}: {
		config = {
			programs.firefox = {
				enable = true;
				preferences = {
					"sidebar.revamp" = true;
					"sidebar.verticalTabs" = true;
				};
			};
		};
	});
}
