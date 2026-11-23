# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.18"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.18/reactor-cli_v1.20261123.18_darwin-arm64.tar.gz"
      sha256 "11f1bf87d77c7fa0a3226df1cc1db9dbbf6694aa617cb83a0e2bdeeb4b4072ad"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.18/reactor-cli_v1.20261123.18_darwin-amd64.tar.gz"
      sha256 "544e1ebb165c5315c7e07841d04c6878157a22a0286f7fe16c71ad97e21988ee"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.18/reactor-cli_v1.20261123.18_linux-arm64.tar.gz"
      sha256 "e168a8a0d140062ef0aaf975a18737811e6433b84cfc07888d85d80510f41596"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.18/reactor-cli_v1.20261123.18_linux-amd64.tar.gz"
      sha256 "3c18e2f3f7f5cf5961f303b9fccb00742856fbabdde9b43fd84dc7a653fb8a45"
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
