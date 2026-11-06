{inputs, ...}: {

	perSystem = {system, ...}: {
		_module.args.unfreePkgs = import inputs.nixpkgs {
			inherit system;
			config.allowUnfree = true;
		};
	};

	flake.nixosModules.nix = {...}: {
		nix = {
			gc = {
				automatic = true;
			};
			settings = {
				experimental-features = [
					"nix-command"
					"flakes"
				];
			};
		};
		nixpkgs = {
			config = {
				allowUnfree = true;
			};
		};
	};
}
