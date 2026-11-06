package com.facebook.ads.redexgen.X;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.util.Pair;
import android.view.Surface;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public interface InterfaceC1916Sn {
    @MetaExoPlayerCustomization
    void A5h(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i, Object obj);

    int A6R();

    int A6T(MediaCodec.BufferInfo bufferInfo);

    ByteBuffer A8v(int i);

    ByteBuffer A9H(int i);

    MediaFormat A9I();

    @MetaExoPlayerCustomization
    Pair<Long, Integer> A9M();

    @MetaExoPlayerCustomization
    int A9x();

    void AIV(int i, int i2, int i3, long j, int i4);

    void AIX(int i, int i2, C1799No c1799No, long j, int i3);

    void AIp();

    void AIv(int i, long j);

    void AIw(int i, boolean z);

    void AKs(InterfaceC1915Sm interfaceC1915Sm, Handler handler);

    void AKt(Surface surface);

    void ALA(int i);

    void flush();

    @MetaExoPlayerCustomization
    @Deprecated
    void reset();

    @MetaExoPlayerCustomization
    void start();

    @MetaExoPlayerCustomization
    @Deprecated
    void stop();
}
