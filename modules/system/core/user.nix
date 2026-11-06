{
	self,
	inputs,
	moduleWithSystem,
	...
}: {
	flake.nixosModules.user = moduleWithSystem ({inputs', ...}: let
	in {
		users.users = {
			jarmuz = {
				isNormalUser = true;
				initialPassword = "password";
				description = "jarmuz";
				extraGroups = [
					"root"
					"wheel"
				];
			};
		};
	});
}
