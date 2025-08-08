return {
    cmd = {
        "nixd",
    },
    filetypes = { "nix" },
    root_markers = { "flake.nix", "flake.lock", ".git", "shell.nix", "devenv.nix" },
    settings = {
        nixd = {
            nixpkgs = {
                -- use system nixpkgs
                expr = 'import (builtins.getFlake "path:/etc/nixos").inputs.nixpkgs {}',
            },
            formatting = {
                command = { "nix", "fmt" },
            },
            options = {
                nixos = {
                    expr = '(builtins.getFlake "path:/etc/nixos").nixosConfigurations.hydra.options',
                },
            },
        },
    },
    single_file_support = true,
}
