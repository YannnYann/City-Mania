package com.unity3d.ads.adplayer;

import com.unity3d.ads.adplayer.AdPlayer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EmbeddableAdPlayer.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface EmbeddableAdPlayer extends AdPlayer {

    /* JADX INFO: compiled from: EmbeddableAdPlayer.kt */
    public static final class DefaultImpls {
        public static Object destroy(EmbeddableAdPlayer embeddableAdPlayer, Continuation<? super Unit> continuation) {
            Object objDestroy = AdPlayer.DefaultImpls.destroy(embeddableAdPlayer, continuation);
            return objDestroy == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDestroy : Unit.INSTANCE;
        }

        public static void show(EmbeddableAdPlayer embeddableAdPlayer, ShowOptions showOptions) {
            Intrinsics.checkNotNullParameter(showOptions, "showOptions");
            AdPlayer.DefaultImpls.show(embeddableAdPlayer, showOptions);
        }
    }
}
