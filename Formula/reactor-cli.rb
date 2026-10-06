# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261006.159"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.159/reactor-cli_v1.20261006.159_darwin-arm64.tar.gz"
      sha256 "2bf4c1f58d872490526c339b84c98da19e8d1f2724e3ee86b58bf325284a7a20"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.159/reactor-cli_v1.20261006.159_darwin-amd64.tar.gz"
      sha256 "6b415f8d0eabd96de7a706b522f84ef061ef59c0f530cda1cc4502d623084cb5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.159/reactor-cli_v1.20261006.159_linux-arm64.tar.gz"
      sha256 "b92450ce4a0b6e56c7549a2e91910393e0f4bdf4e78cdccb56daef4a1e17e484"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.159/reactor-cli_v1.20261006.159_linux-amd64.tar.gz"
      sha256 "d01da9a6e190c55ce1603d780cf242dee941f374dc26ae49d32203a7e888c9ca"
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
