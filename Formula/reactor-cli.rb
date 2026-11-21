# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261121.5"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261121.5/reactor-cli_v1.20261121.5_darwin-arm64.tar.gz"
      sha256 "bda425066c696524ab79317b08c6544f6be309419ec5991bea8995a5662f48de"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261121.5/reactor-cli_v1.20261121.5_darwin-amd64.tar.gz"
      sha256 "71c98bc5b19f2035cd29218a986351e20fe04c34b197d332bc457fa0a355a4a7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261121.5/reactor-cli_v1.20261121.5_linux-arm64.tar.gz"
      sha256 "551b97cf62aa6f6dc90499f97a193247eb6818c5f47f28cd8f78221a32ab0621"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261121.5/reactor-cli_v1.20261121.5_linux-amd64.tar.gz"
      sha256 "d2f4c8479571717142dabc70c62253c0295a68aa0d6210cc872749ef0eeeb585"
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
