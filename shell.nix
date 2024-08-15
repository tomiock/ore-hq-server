with import <nixpkgs> { };
(
    pkgs.mkShell {
        buildInputs = [
            pkgs.rustup
            pkgs.pkg-config
            pkgs.cargo
            pkgs.rustPackages.cargo
            pkgs.mysql
            pkgs.sqlite
            pkgs.libmysqlclient
            pkgs.openssl
            pkgs.clang
        ];

        RUST_BACKTRACE = 1;

        LIBCLANG_PATH = "${pkgs.llvmPackages.libclang.lib}/lib";

        shellHook = ''
            export MYSQLCLIENT_LIB_DIR=${pkgs.libmysqlclient.out}/lib
            export MYSQLCLIENT_INCLUDE_DIR=${pkgs.libmysqlclient.out}/include
            export MYSQLCLIENT_VERSION="8.0" # or the correct version
        '';
    }
)

