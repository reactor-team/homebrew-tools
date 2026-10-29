# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261029.560"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.560/reactor-cli_v1.20261029.560_darwin-arm64.tar.gz"
      sha256 "b8ee0b73c38ecbe0aedf2cd1ac41d2a895af5689494bb865a3357012a7c5abac"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.560/reactor-cli_v1.20261029.560_darwin-amd64.tar.gz"
      sha256 "0411d0417ffc00e0a23a5616c6fe708729b7fe1d9dbe9667f7bd0e043c6b65f2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.560/reactor-cli_v1.20261029.560_linux-arm64.tar.gz"
      sha256 "dd9e717bb334cc5bbfcd5497b05d513d98997b6e74b4c80fe4b130a830cae14d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.560/reactor-cli_v1.20261029.560_linux-amd64.tar.gz"
      sha256 "78ffb02886ab1da252311612a751b9af7a6cd96fb08f35f2d043497b79d91a42"
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
