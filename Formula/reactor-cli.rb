# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260716.18578"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260716.18578/reactor-cli_v1.20260716.18578_darwin-arm64.tar.gz"
      sha256 "fb33292a44f102634e61774a46ddb54ff49ded2bb95903a047830c925184ac80"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260716.18578/reactor-cli_v1.20260716.18578_darwin-amd64.tar.gz"
      sha256 "aab985a03b0486bd55e30a1df85ebe8f457e8084b8910683d56314d5eb29689a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260716.18578/reactor-cli_v1.20260716.18578_linux-arm64.tar.gz"
      sha256 "9cc7924568ac992b59ca53fc7a1ce0f8f6b768945d6f31e74652cc03cd1d1545"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260716.18578/reactor-cli_v1.20260716.18578_linux-amd64.tar.gz"
      sha256 "4c8f48ec046a8293d506aa36fe2166aec5a7645d52a7ffa64f04912e7aead61f"
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
