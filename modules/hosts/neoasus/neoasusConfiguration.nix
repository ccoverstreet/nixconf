{...}: {
	flake.nixosModules.neoasusConfiguration = {...}: {
		networking = {
			hostName = "neoasus";
		};
		imports = [./_hardware-configuration.nix];
	};
}
