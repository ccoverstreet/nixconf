{
	self,
	inputs,
	...
}: {
	flake.nixosModules.git = {
		pkgs,
		lib,
		...
	}: {
		programs.git = {
			enable = true;
			config = {
				init.defaultBranch = "main";
				user = {
					email = "cale.overstreet@gmail.com";
					name = "ccoverstreet";
				};
			};
		};
	};
}
