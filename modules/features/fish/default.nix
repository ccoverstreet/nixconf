{
	self,
	inputs,
	...
}: {
	flake.nixosModules.fish = {
		pkgs,
		lib,
		...
	}: {
		imports = [ self.nixosModules.lazygit ];
		programs.fish = {
			enable = true;
			interactiveShellInit = ''
				set fish_greeting	
			'';
			shellAliases = {
				lg = "lazygit";
			};
			shellFunctions = {
				nixfish = {
					body = ''nix develop $argv -c fish'';
				};
			};
		};
	};
	perSystem = {
		self',
		system,
		inputs',
		...
	}: {
		packages = {
			runtimePackages = {
				lazygit = self'.packages.lazygit;
			};
		};
	};
}
