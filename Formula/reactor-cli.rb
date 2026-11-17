# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261117.18"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.18/reactor-cli_v1.20261117.18_darwin-arm64.tar.gz"
      sha256 "2f61164c3437e5b87740bc2a5b37786d57841dc54563b60a7208c7e2afa54994"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.18/reactor-cli_v1.20261117.18_darwin-amd64.tar.gz"
      sha256 "0fa6b6aedcf014b664bb96078cb766c7d2bc11559874b79bc929b286546398ef"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.18/reactor-cli_v1.20261117.18_linux-arm64.tar.gz"
      sha256 "eff670e101b95080a4ebf24f58fb63ae94b87ed21298c4c60e4f9d2aca0c3d6d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.18/reactor-cli_v1.20261117.18_linux-amd64.tar.gz"
      sha256 "a8c7794cc3ddd4e6cf58864468493e51cf8072b50a72602d0c401cbd387488e8"
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
