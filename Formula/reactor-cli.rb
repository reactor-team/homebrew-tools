# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.40"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.40/reactor-cli_v1.20261123.40_darwin-arm64.tar.gz"
      sha256 "9527fb7df6ad092a8b11eea748775dd241a6de411be97bd73bfd20d32cab10d6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.40/reactor-cli_v1.20261123.40_darwin-amd64.tar.gz"
      sha256 "6563e1eb5619ae962a5528c26546139125e04f6845de57324ec387e969f189e5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.40/reactor-cli_v1.20261123.40_linux-arm64.tar.gz"
      sha256 "ce1e521cd7c38bbe01bd89948b5f79006533ede270b7728de4a1716ca915246e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.40/reactor-cli_v1.20261123.40_linux-amd64.tar.gz"
      sha256 "acd8716f1bf1ed7029ebc348f201f5e2593c63ab3200711e6231ff3799181da2"
    end
  end

  def install
    bin.install "reactor"
    # `reactor upgrade` reads this file and prints the command instead of
    # replacing a binary that Homebrew owns.
    (lib/"reactor-cli/upgrade-command").write "brew upgrade reactor-team/tools/reactor-cli\n"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
    assert_equal "brew upgrade reactor-team/tools/reactor-cli\n",
                 (lib/"reactor-cli/upgrade-command").read
  end
end
