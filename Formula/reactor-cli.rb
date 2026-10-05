# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261005.173"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.173/reactor-cli_v1.20261005.173_darwin-arm64.tar.gz"
      sha256 "c26f0ee1a62f8cd29eb2357767485487daf569c9e83e9fa741320bae0a3d89c3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.173/reactor-cli_v1.20261005.173_darwin-amd64.tar.gz"
      sha256 "07e3b113e842091e2df402522b7b072431e42d6cab9c431d74e42b15adb13c6c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.173/reactor-cli_v1.20261005.173_linux-arm64.tar.gz"
      sha256 "a47a3041f505b6f9c20238c43fe610d329577e7c8a2b48c73fd2ec0ffbce1d25"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.173/reactor-cli_v1.20261005.173_linux-amd64.tar.gz"
      sha256 "f267a3b45c45de648ae8008539645d2836364cc76f798723391b85df1dd085fd"
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
