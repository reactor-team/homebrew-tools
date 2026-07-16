# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260716.18580"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260716.18580/reactor-cli_v1.20260716.18580_darwin-arm64.tar.gz"
      sha256 "fd6f308e6c837e198be7e569fffaf0a5b4d395a13d03ed5c0e3d8077f43f514c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260716.18580/reactor-cli_v1.20260716.18580_darwin-amd64.tar.gz"
      sha256 "e0fa03d8b33299c7b7d0584753d0dcdfaa8927b9b501ef0677edaf62496de999"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260716.18580/reactor-cli_v1.20260716.18580_linux-arm64.tar.gz"
      sha256 "47ebc8d8c7ad93d9acc105d8f5a62c45b07a5b0790cfa69d03a6a0c6ce797192"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260716.18580/reactor-cli_v1.20260716.18580_linux-amd64.tar.gz"
      sha256 "eacfe4f5efe5f6de6f1b87089bf1d60daca5912123988747a233c54e192326c1"
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
