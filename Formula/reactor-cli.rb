# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261120.15"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.15/reactor-cli_v1.20261120.15_darwin-arm64.tar.gz"
      sha256 "e9af4798854032bd0d6e530663acf13c741bb29dd4425a9c6ba14f0d25ff3e69"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.15/reactor-cli_v1.20261120.15_darwin-amd64.tar.gz"
      sha256 "38bd50df13f4947090464e1090ac82715b5a51ad5ff7821adb866eedac314742"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.15/reactor-cli_v1.20261120.15_linux-arm64.tar.gz"
      sha256 "a6f841b0f9abc77d0a5063ebf1ce688fb2d5813443db6ba3a005a5102e30d616"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.15/reactor-cli_v1.20261120.15_linux-amd64.tar.gz"
      sha256 "22a303bac9942188a52c0a21ce3b3c7b8f070a8e5532af45566b03884770ada1"
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
