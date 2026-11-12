# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.5"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.5/reactor-cli_v1.20261112.5_darwin-arm64.tar.gz"
      sha256 "4eaeed87d3d2207477b3c6a1ec668558ab97a3e3bb55871f4702f469e59e6575"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.5/reactor-cli_v1.20261112.5_darwin-amd64.tar.gz"
      sha256 "4d8c06ef3c8187f9b586335eb38e7c7a5060f04cd81ccdf71787f917c0a90ecb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.5/reactor-cli_v1.20261112.5_linux-arm64.tar.gz"
      sha256 "c7b7f0ff14e31e693db93a41052b16002758c343c4d6006e5e94220a27223034"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.5/reactor-cli_v1.20261112.5_linux-amd64.tar.gz"
      sha256 "c73fad7274cb68860e05fea7d629a20a9d053e43469ba35540b4baf9b738b1e2"
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
