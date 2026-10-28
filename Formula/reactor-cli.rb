# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261028.60"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.60/reactor-cli_v1.20261028.60_darwin-arm64.tar.gz"
      sha256 "4620e96d1e5386a04da96a98591cd49432d8be5ec4204870d69d9c049530c518"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.60/reactor-cli_v1.20261028.60_darwin-amd64.tar.gz"
      sha256 "12fa60353869e759098d0fd7cd0e071e7f1823788c93510574648e0cf4e54ff8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.60/reactor-cli_v1.20261028.60_linux-arm64.tar.gz"
      sha256 "cc0d32113a5ce462e5bc4a4c23dae49f253009686f6248db67f9254c0141a4ea"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.60/reactor-cli_v1.20261028.60_linux-amd64.tar.gz"
      sha256 "5567b4f8c77dd0c04d1ebf9aa341bf0fb61ae562c6d091f1390c4b1d4237a560"
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
