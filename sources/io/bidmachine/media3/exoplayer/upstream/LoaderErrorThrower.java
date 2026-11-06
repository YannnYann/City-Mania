package io.bidmachine.media3.exoplayer.upstream;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public interface LoaderErrorThrower {

    public static final class Placeholder implements LoaderErrorThrower {
        @Override // io.bidmachine.media3.exoplayer.upstream.LoaderErrorThrower
        public void maybeThrowError() {
        }
    }

    void maybeThrowError() throws IOException;
}
