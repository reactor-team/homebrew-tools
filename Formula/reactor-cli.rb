# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260826.23374"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23374/reactor-cli_v1.20260826.23374_darwin-arm64.tar.gz"
      sha256 "77b4dadc6a2d9cae76db23af11d07ffa842b75061d1f28d0c1a150472e394247"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23374/reactor-cli_v1.20260826.23374_darwin-amd64.tar.gz"
      sha256 "6a999db6cee86e4fbc878ea32c2b1e09bf83aa6b9e183ac8f291728cffcc3a8d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23374/reactor-cli_v1.20260826.23374_linux-arm64.tar.gz"
      sha256 "01f036cc100e8ada4fbf35fd3eb3f275b28fae1492bd1e93b67371c55604855d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23374/reactor-cli_v1.20260826.23374_linux-amd64.tar.gz"
      sha256 "a88a490d37d651bd83f7eba39d819b256365700f654b57d4a185380fd27ad3cf"
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
