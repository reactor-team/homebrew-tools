# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261010.106"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261010.106/reactor-cli_v1.20261010.106_darwin-arm64.tar.gz"
      sha256 "2010f289a651cfd39871794bf0033aa8b44ad0354aae3eecfa3b7ad198c68db3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261010.106/reactor-cli_v1.20261010.106_darwin-amd64.tar.gz"
      sha256 "5bd9c3a29fc46b6880695b089c6f3f8dc9a352691f4c796fa50efd83258731ad"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261010.106/reactor-cli_v1.20261010.106_linux-arm64.tar.gz"
      sha256 "23f03ebc1205d1bebaba45116cf5057d26227f6ef72f567ff6856c0ff47c28f2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261010.106/reactor-cli_v1.20261010.106_linux-amd64.tar.gz"
      sha256 "5c6d0da77fc6f9eb73add08ad5640d3b984a124d5bf1352b1295dd277cb6f2df"
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
