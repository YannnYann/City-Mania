package io.bidmachine.rendering.internal.adform.video.player;

import android.content.Context;
import io.bidmachine.rendering.internal.t;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class c {
    public static final c a = new c();

    public static final b a(Context context, String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (Intrinsics.areEqual(str, "exo")) {
            t.b("PlayerFactory", "Create player (ExoPlayerImpl)", new Object[0]);
            return new io.bidmachine.rendering.internal.adform.video.player.exo.a(context);
        }
        t.b("PlayerFactory", "Create player (MediaPlayerImpl)", new Object[0]);
        return new io.bidmachine.rendering.internal.adform.video.player.media.a(context);
    }
}
