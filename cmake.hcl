description = "CMake is an open-source, cross-platform family of tools designed to build, test and package software."
binaries = ["bin/*"]
test = "cmake --version"

darwin {
  strip = 3
  source = "https://github.com/Kitware/CMake/releases/download/v${version}/cmake-${version}-macos-universal.tar.gz"
}

linux {
  strip = 1
  source = "https://github.com/Kitware/CMake/releases/download/v${version}/cmake-${version}-linux-x86_64.tar.gz"
}

version "3.20.4" "3.21.0-rc1" "3.21.0-rc2" "3.21.0-rc3" "3.21.0" "3.21.1" "3.21.2"
        "3.21.3" "3.22.0-rc1" "3.21.4" "3.22.0-rc2" "3.22.0-rc3" "3.22.0" {
  auto-version {
    github-release = "Kitware/CMake"
  }
}
