package com.facebook.ads.redexgen.X;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.util.Pair;
import android.view.Surface;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class S5 implements InterfaceC1916Sn {
    public ByteBuffer[] A00;
    public ByteBuffer[] A01;
    public final MediaCodec A02;

    @MetaExoPlayerCustomization
    public S5(MediaCodec mediaCodec) {
        this.A02 = mediaCodec;
    }

    public final /* synthetic */ void A00(InterfaceC1915Sm interfaceC1915Sm, MediaCodec mediaCodec, long j, long j2) {
        interfaceC1915Sm.AF2(this, j, j2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    @MetaExoPlayerCustomization
    public final void A5h(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i, Object obj) {
        this.A02.configure(mediaFormat, surface, mediaCrypto, i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final int A6R() {
        return this.A02.dequeueInputBuffer(0L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final int A6T(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.A02.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 && N1.A02 < 21) {
                this.A01 = this.A02.getOutputBuffers();
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final ByteBuffer A8v(int i) {
        if (N1.A02 >= 21) {
            return this.A02.getInputBuffer(i);
        }
        return ((ByteBuffer[]) N1.A0f(this.A00))[i];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final ByteBuffer A9H(int i) {
        if (N1.A02 >= 21) {
            return this.A02.getOutputBuffer(i);
        }
        return ((ByteBuffer[]) N1.A0f(this.A01))[i];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final MediaFormat A9I() {
        return this.A02.getOutputFormat();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    @MetaExoPlayerCustomization
    public final Pair<Long, Integer> A9M() {
        return new Pair<>(0L, 0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    @MetaExoPlayerCustomization
    public final int A9x() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final void AIV(int i, int i2, int i3, long j, int i4) {
        this.A02.queueInputBuffer(i, i2, i3, j, i4);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final void AIX(int i, int i2, C1799No c1799No, long j, int i3) {
        this.A02.queueSecureInputBuffer(i, i2, c1799No.A00(), j, i3);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final void AIp() {
        this.A00 = null;
        this.A01 = null;
        this.A02.release();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final void AIv(int i, long j) {
        this.A02.releaseOutputBuffer(i, j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final void AIw(int i, boolean z) {
        this.A02.releaseOutputBuffer(i, z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final void AKs(final InterfaceC1915Sm interfaceC1915Sm, Handler handler) {
        this.A02.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.facebook.ads.redexgen.X.TO
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                this.A01.A00(interfaceC1915Sm, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final void AKt(Surface surface) {
        this.A02.setOutputSurface(surface);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final void ALA(int i) {
        this.A02.setVideoScalingMode(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    public final void flush() {
        this.A02.flush();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    @MetaExoPlayerCustomization
    public final void reset() {
        this.A02.reset();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    @MetaExoPlayerCustomization
    public final void start() {
        this.A02.start();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1916Sn
    @MetaExoPlayerCustomization
    public final void stop() {
        this.A02.stop();
    }
}
