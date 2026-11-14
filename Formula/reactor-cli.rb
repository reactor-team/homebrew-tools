# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261114.5"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261114.5/reactor-cli_v1.20261114.5_darwin-arm64.tar.gz"
      sha256 "a68059532d793745861bf4d91bde86ab64875abcc8e3305453a9d47431ebbd5f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261114.5/reactor-cli_v1.20261114.5_darwin-amd64.tar.gz"
      sha256 "4be608d0015150869858d43dc87a5cd93db7bd559b910b0be59381049b49c516"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261114.5/reactor-cli_v1.20261114.5_linux-arm64.tar.gz"
      sha256 "be521d083b5e70e9b80387df4186a76aa390d48674161376a85545f3d83a10c7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261114.5/reactor-cli_v1.20261114.5_linux-amd64.tar.gz"
      sha256 "9aca9e7af299c7092f340cb2ab949f5573d96c9ee3615fc2629d8cd21ecac5e4"
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
