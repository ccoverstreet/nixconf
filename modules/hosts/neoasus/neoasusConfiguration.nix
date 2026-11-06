{...}: {
	flake.nixosModules.neoasusConfiguration = {pkgs, ...}: {
		networking = {
			hostName = "neoasus";
		};
		imports = [./_hardware-configuration.nix];
	};
}
