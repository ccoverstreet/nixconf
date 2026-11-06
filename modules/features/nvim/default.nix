{
	self,
	inputs,
	...
}: {
	flake.nixosModules.nvim = {
		pkgs,
		lib,
		...
	}: {
		programs.neovim = {
			enable = true;
			defaultEditor = true;
			viAlias = true;
			vimAlias = true;
			configure.customRC = ''
				 source ${pkgs.vimPlugins.vim-plug}/plug.vim
				 ${builtins.readFile ./init.vim}
			'';
		};

		environment.systemPackages = [ pkgs.git ];
	};
}
