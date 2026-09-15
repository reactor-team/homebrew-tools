# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260915.26746"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26746/reactor-cli_v1.20260915.26746_darwin-arm64.tar.gz"
      sha256 "a964038b8940b8c45bdd4bf0504ae080edd9a3c6386d6b96c65da22ebbe21a19"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26746/reactor-cli_v1.20260915.26746_darwin-amd64.tar.gz"
      sha256 "1241ca286624a6d332c86de480ff23a6de55e673087101c095bb2e2171773066"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26746/reactor-cli_v1.20260915.26746_linux-arm64.tar.gz"
      sha256 "c0a75c2c9a798b3753f9beb538dc19bd2c2779f1a4ebbc9760395ff1d383f664"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26746/reactor-cli_v1.20260915.26746_linux-amd64.tar.gz"
      sha256 "5a4ffc5b6c85686ae2be04d2368d351ec4085a2b233a71b5191457b9271d7e2d"
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
