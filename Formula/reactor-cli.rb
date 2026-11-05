# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.355"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.355/reactor-cli_v1.20261105.355_darwin-arm64.tar.gz"
      sha256 "cfc157630a7663b8c7ecde12cac5c3701ffa7bdce793b98f71cad4b36129b6d0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.355/reactor-cli_v1.20261105.355_darwin-amd64.tar.gz"
      sha256 "9f76fea5349160408883259970c54aced0c4c278b560599e7933c50eab7863b1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.355/reactor-cli_v1.20261105.355_linux-arm64.tar.gz"
      sha256 "8897d4d4e12891ac3070f66f7e9f9e38f1339bb38b2c3f70266e6cb4370f1e0a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.355/reactor-cli_v1.20261105.355_linux-amd64.tar.gz"
      sha256 "70d03110979f39da17dc53bd0b85b7972adae0b4eeba9d30490a79a57f4b220e"
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
