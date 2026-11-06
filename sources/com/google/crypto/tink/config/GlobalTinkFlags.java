package com.google.crypto.tink.config;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final class GlobalTinkFlags {
    public static final TinkFlag validateKeysetsOnParsing = new TinkFlagImpl(false);

    public static class TinkFlagImpl implements TinkFlag {
        public final AtomicBoolean b;

        public TinkFlagImpl(boolean b) {
            this.b = new AtomicBoolean(b);
        }

        @Override // com.google.crypto.tink.config.TinkFlag
        public boolean getValue() {
            return this.b.get();
        }
    }
}
