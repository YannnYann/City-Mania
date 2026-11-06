package com.ironsource.mediationsdk;

import com.ironsource.Y7;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class m {
    public static final a a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(ISBannerSize bannerSize, Y7 containerParams) {
            Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
            Intrinsics.checkNotNullParameter(containerParams, "containerParams");
            bannerSize.a(containerParams);
        }

        private a() {
        }
    }
}
