GO_ARCHIVE=$(curl -s 'https://go.dev/VERSION?m=text' | head -n 1).linux-amd64.tar.gz
GO_LINK="https://go.dev/dl/$GO_ARCHIVE"
wget $GO_LINK
sudo rm -rf "$HOME/.go"
mkdir -p "$HOME/.go"
sudo tar -C "$HOME/.go" -xzf $GO_ARCHIVE
# move .go/go/* to .go/*
mv "$HOME/.go/go"/* "$HOME/.go"
rm $GO_ARCHIVE
