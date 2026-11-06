{
	self,
	inputs,
	moduleWithSystem,
	...
}: {
	flake.nixosModules.user = moduleWithSystem ({inputs', ...}: let
	in {
		users.users = {
			user01 = {
				isNormalUser = true;
				initialPassword = "password";
				description = "user01";
				extraGroups = [
					"root"
					"wheel"
				];
			};
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
