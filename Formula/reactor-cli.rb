# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.27"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.27/reactor-cli_v1.20261119.27_darwin-arm64.tar.gz"
      sha256 "57d5368d612dfbeb49a8d4e17e5eb8ba3d7356037736960a09a5a5effa42231c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.27/reactor-cli_v1.20261119.27_darwin-amd64.tar.gz"
      sha256 "70f11101ac4787eb8b568396a33f9e665d008ad726f03233973f82a00286a837"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.27/reactor-cli_v1.20261119.27_linux-arm64.tar.gz"
      sha256 "61bb878010f707fd7ec2922749aecc4be9470c90394d59db72570cda087508dd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.27/reactor-cli_v1.20261119.27_linux-amd64.tar.gz"
      sha256 "24392e2ad891137b4b7d135496b26e61bfadcdb5c54ca5c11d9d485579a4338c"
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
