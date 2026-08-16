# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260816.21954"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260816.21954/reactor-cli_v1.20260816.21954_darwin-arm64.tar.gz"
      sha256 "caf62476e612bb73f9b477dbccfb9a93039732f62f3caf30371cbaeea70b3629"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260816.21954/reactor-cli_v1.20260816.21954_darwin-amd64.tar.gz"
      sha256 "26c634b745f0e7c802903344aaa5462a0bec502926324e39c9851c87b982f76c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260816.21954/reactor-cli_v1.20260816.21954_linux-arm64.tar.gz"
      sha256 "1d7cb59c7dc73a7ae7a32d271f4e6a7268643b5643915acb1f9953056968e48d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260816.21954/reactor-cli_v1.20260816.21954_linux-amd64.tar.gz"
      sha256 "578c7c845c9547d8f6064f6abb0623984afba8377dcf576df629502750d7c5b4"
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
