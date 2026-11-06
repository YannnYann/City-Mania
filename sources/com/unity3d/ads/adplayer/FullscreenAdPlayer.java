package com.unity3d.ads.adplayer;

import com.unity3d.ads.adplayer.AdPlayer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FullscreenAdPlayer.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface FullscreenAdPlayer extends AdPlayer {

    /* JADX INFO: compiled from: FullscreenAdPlayer.kt */
    public static final class DefaultImpls {
        public static Object destroy(FullscreenAdPlayer fullscreenAdPlayer, Continuation<? super Unit> continuation) {
            Object objDestroy = AdPlayer.DefaultImpls.destroy(fullscreenAdPlayer, continuation);
            return objDestroy == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDestroy : Unit.INSTANCE;
        }

        public static void show(FullscreenAdPlayer fullscreenAdPlayer, ShowOptions showOptions) {
            Intrinsics.checkNotNullParameter(showOptions, "showOptions");
            AdPlayer.DefaultImpls.show(fullscreenAdPlayer, showOptions);
        }
    }
}
