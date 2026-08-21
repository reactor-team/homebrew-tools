# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260821.22650"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22650/reactor-cli_v1.20260821.22650_darwin-arm64.tar.gz"
      sha256 "321f651afe3c5b7720432b94fb58d8a2d30ebc2b4f49f70655e4b89b69bb3b51"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22650/reactor-cli_v1.20260821.22650_darwin-amd64.tar.gz"
      sha256 "52d9ff99de15f638ed760cc080975014c1b67483296106061440efcd88aefd54"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22650/reactor-cli_v1.20260821.22650_linux-arm64.tar.gz"
      sha256 "554cc41bf6cef8bfe849876bc7a4918a6a746a134c450c448669a7cbe65fc9d8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22650/reactor-cli_v1.20260821.22650_linux-amd64.tar.gz"
      sha256 "a2d1c21e9999915bc7b47fb67c76a9d44dd110c1d933f6937e58209e5dcbab75"
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
