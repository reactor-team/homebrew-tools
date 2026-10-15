# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261015.346"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.346/reactor-cli_v1.20261015.346_darwin-arm64.tar.gz"
      sha256 "21c56097c9910f0e0bc0dba11ce915764cdefa4764a7db21a1f367a3c9ae3581"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.346/reactor-cli_v1.20261015.346_darwin-amd64.tar.gz"
      sha256 "d7296bd285ae3d935a44a1ecd9756a3e9bfe3de80b1130b88f90bbb8c5ca38d6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.346/reactor-cli_v1.20261015.346_linux-arm64.tar.gz"
      sha256 "04b1cf57b371571eada2697d3984293f1fa094f393101e7e7e76f51bbcfedfd0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.346/reactor-cli_v1.20261015.346_linux-amd64.tar.gz"
      sha256 "b7a2275db1058f6f21584b1ee77dbdda1cd2adde8321226c2875c6b5ad7973e8"
    end
  end

  def install
    bin.install "reactor"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
  end
end
