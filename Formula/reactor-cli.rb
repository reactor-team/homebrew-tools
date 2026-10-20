# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.214"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.214/reactor-cli_v1.20261020.214_darwin-arm64.tar.gz"
      sha256 "16231e6a1d5551f6063c903a60cdda5558148899e4e7ace499b95bc1aa959e13"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.214/reactor-cli_v1.20261020.214_darwin-amd64.tar.gz"
      sha256 "009902a40759f83f009a7fb850d7412544704ba5926348dc6b6dba3e585edc24"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.214/reactor-cli_v1.20261020.214_linux-arm64.tar.gz"
      sha256 "3e886daeff11aadd905edc93feba91878738d4a8444a8c48482d2dba50c0aff7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.214/reactor-cli_v1.20261020.214_linux-amd64.tar.gz"
      sha256 "c88fc5f9f7688fa19b8d6e95ced9c03fd8b6a29449073eeb6143e9ebbec30479"
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
