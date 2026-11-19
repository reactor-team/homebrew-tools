# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.16"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.16/reactor-cli_v1.20261119.16_darwin-arm64.tar.gz"
      sha256 "d505e7f5efbd831dfe7826302b4579c39b60df21e47329390d4dc2410bf34b94"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.16/reactor-cli_v1.20261119.16_darwin-amd64.tar.gz"
      sha256 "cc19d7941266cf9c3d09c9d0005eeb7ff20c5e3fd8e13503f3dd241589edf795"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.16/reactor-cli_v1.20261119.16_linux-arm64.tar.gz"
      sha256 "326ed170318c77d14f1094f12e3bfa52c1c5a0f79749b95ac2b166f2e530cf27"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.16/reactor-cli_v1.20261119.16_linux-amd64.tar.gz"
      sha256 "95ca9313c41f771718812697d14ad5d4669c1f1a63cd5fe7ff75963a694a7bb1"
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
