package com.unity3d.coherence;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class CoherenceInitConfig {
    public final Context context;
    public final int source;

    public CoherenceInitConfig(Context context, int i) {
        this.context = context;
        this.source = i;
    }

    public Context getContext() {
        return this.context;
    }

    public int getSource() {
        return this.source;
    }

    public static final class Builder {
        public final Context context;
        public int source;

        public Builder(Context context) {
            Objects.requireNonNull(context, "context must not be null");
            Context applicationContext = context.getApplicationContext();
            this.context = applicationContext != null ? applicationContext : context;
        }

        public Builder setSource(int i) {
            this.source = i;
            return this;
        }

        public CoherenceInitConfig build() {
            return new CoherenceInitConfig(this.context, this.source);
        }
    }
}
