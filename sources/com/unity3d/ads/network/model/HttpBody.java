package com.unity3d.ads.network.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpBody.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface HttpBody {

    /* JADX INFO: compiled from: HttpBody.kt */
    public static final class StringBody implements HttpBody {
        private final String content;

        public StringBody(String content) {
            Intrinsics.checkNotNullParameter(content, "content");
            this.content = content;
        }

        public final String getContent() {
            return this.content;
        }
    }

    /* JADX INFO: compiled from: HttpBody.kt */
    public static final class ByteArrayBody implements HttpBody {
        private final byte[] content;

        public ByteArrayBody(byte[] content) {
            Intrinsics.checkNotNullParameter(content, "content");
            this.content = content;
        }

        public final byte[] getContent() {
            return this.content;
        }
    }

    /* JADX INFO: compiled from: HttpBody.kt */
    public static final class EmptyBody implements HttpBody {
        public static final EmptyBody INSTANCE = new EmptyBody();

        private EmptyBody() {
        }
    }
}
