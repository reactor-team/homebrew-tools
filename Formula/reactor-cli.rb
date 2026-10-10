# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261010.77"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261010.77/reactor-cli_v1.20261010.77_darwin-arm64.tar.gz"
      sha256 "fa47015b172adbf8af446523079126a524770436ec2692843e8ea89a65fd9dde"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261010.77/reactor-cli_v1.20261010.77_darwin-amd64.tar.gz"
      sha256 "0ffe680ca7584387eb2b4539ac3f127aa7d15e5f4212afb8c58058d60c1ef4d9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261010.77/reactor-cli_v1.20261010.77_linux-arm64.tar.gz"
      sha256 "020ff77dba0ff3b573880c1d64a0f64f72c96cb8769497315f47eff5ff30ecfa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261010.77/reactor-cli_v1.20261010.77_linux-amd64.tar.gz"
      sha256 "a7809a7619a330fd7106b2cfd08c3ca80975182369d5c88b6a33f297662665e9"
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
