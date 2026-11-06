{
	inputs,
	moduleWithSystem,
	...
}: {
	flake.nixosModules.rofitabs = moduleWithSystem({
		pkgs,
		self',
		inputs',
		...
	}: {config, ...}: {
		config = {
			environment.systemPackages =[
				inputs'.rofitabs.packages.default
			];
		};
		
	});
}
