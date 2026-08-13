# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260813.21789"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260813.21789/reactor-cli_v1.20260813.21789_darwin-arm64.tar.gz"
      sha256 "7b465626c3f5e52bf1cdace6ef97c11bdf3424abd0b0045d176cab42297ab294"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260813.21789/reactor-cli_v1.20260813.21789_darwin-amd64.tar.gz"
      sha256 "e14785d588fb878c1d4329a1213588cd6ec37cd3ceb9b972f70a6c9bf302273e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260813.21789/reactor-cli_v1.20260813.21789_linux-arm64.tar.gz"
      sha256 "5b91571b852ef62504432e2de3ed491229abace95e371d455db80a819ad9d5dc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260813.21789/reactor-cli_v1.20260813.21789_linux-amd64.tar.gz"
      sha256 "61a27ecddb384b1c766c92943b8a4da46c4acf8bc196dab5fe1de2b1ff872739"
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
