package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest;
import java.io.IOException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class S0 extends Thread implements U2 {
    public long A00;
    public Exception A01;
    public final int A02;
    public final C1947Ts A03;
    public final DownloadRequest A04;
    public final U3 A05;
    public final boolean A06;
    public volatile HandlerC1943To A07;
    public volatile boolean A08;

    public S0(DownloadRequest downloadRequest, U3 u3, C1947Ts c1947Ts, boolean z, int i, HandlerC1943To handlerC1943To) {
        this.A04 = downloadRequest;
        this.A05 = u3;
        this.A03 = c1947Ts;
        this.A06 = z;
        this.A02 = i;
        this.A07 = handlerC1943To;
        this.A00 = -1L;
    }

    public static int A00(int i) {
        return Math.min((i - 1) * 1000, 5000);
    }

    public final void A05(boolean z) {
        if (z) {
            this.A07 = null;
        }
        if (!this.A08) {
            this.A08 = true;
            this.A05.cancel();
            interrupt();
        }
    }

    @Override // com.facebook.ads.redexgen.X.U2
    public final void AGd(long j, long j2, float f) {
        this.A03.A01 = j2;
        this.A03.A00 = f;
        if (j != this.A00) {
            this.A00 = j;
            HandlerC1943To handlerC1943To = this.A07;
            if (handlerC1943To != null) {
                handlerC1943To.obtainMessage(10, (int) (j >> 32), (int) j, this).sendToTarget();
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            try {
                if (this.A06) {
                    this.A05.remove();
                } else {
                    int i = 0;
                    long bytesDownloaded = -1;
                    while (!this.A08) {
                        try {
                            this.A05.A6c(this);
                            break;
                        } catch (IOException e) {
                            if (!this.A08) {
                                long j = this.A03.A01;
                                if (j != bytesDownloaded) {
                                    bytesDownloaded = j;
                                    i = 0;
                                }
                                i++;
                                if (i <= this.A02) {
                                    Thread.sleep(A00(i));
                                } else {
                                    throw e;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                AbstractC2996oi.A00(th, this);
                return;
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (Exception e2) {
            this.A01 = e2;
        }
        Handler internalHandler = this.A07;
        if (internalHandler != null) {
            internalHandler.obtainMessage(9, this).sendToTarget();
        }
    }
}
