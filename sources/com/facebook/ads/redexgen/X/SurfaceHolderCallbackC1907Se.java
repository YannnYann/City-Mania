package com.facebook.ads.redexgen.X;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Se, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class SurfaceHolderCallbackC1907Se implements YC, InterfaceC1855Qe, WE, TS, SurfaceHolder.Callback, TextureView.SurfaceTextureListener {
    public static String[] A01 = {"exxbpzcvIz96IPgBJXqt6pp5itorUF0v", "", "vaPUn1aNMiZ346cWCU2pc8maO9eEgJtl", "", "Zerdoj33HxDipZN8U41vAIMmtEo1dxqV", "Hd0EHkxqhfRSUHQCJm03k00NKThSKgEe", "Y3XMdSyeNt7JpS9ShLboIeCRpeyuEUYI", "8w3zvrsb6gjp4AAyphlBNpXR3J0KmDiy"};
    public final /* synthetic */ AnonymousClass93 A00;

    @Override // com.facebook.ads.redexgen.X.InterfaceC1855Qe
    public final /* synthetic */ void AE0(VC vc, OA oa) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1855Qe
    public final /* synthetic */ void AE1(long j) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1855Qe
    public final /* synthetic */ void AE2(Exception exc) {
    }

    @Override // com.facebook.ads.redexgen.X.YC
    public final /* synthetic */ void AEV(int i, long j) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1855Qe
    public final /* synthetic */ void AH5(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.YC
    public final /* synthetic */ void AHf(VC vc, OA oa) {
    }

    public SurfaceHolderCallbackC1907Se(AnonymousClass93 anonymousClass93) {
        this.A00 = anonymousClass93;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1855Qe
    public final void ADw(String str, long j, long j2) {
        Iterator it = this.A00.A0H.iterator();
        while (it.hasNext()) {
            ((InterfaceC1855Qe) it.next()).ADw(str, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1855Qe
    public final void ADx(O7 o7) {
        Iterator it = this.A00.A0H.iterator();
        while (it.hasNext()) {
            ((InterfaceC1855Qe) it.next()).ADx(o7);
        }
        this.A00.A07 = null;
        this.A00.A09 = null;
        this.A00.A01 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1855Qe
    public final void ADy(O7 o7) {
        this.A00.A09 = o7;
        Iterator it = this.A00.A0H.iterator();
        while (it.hasNext()) {
            ((InterfaceC1855Qe) it.next()).ADy(o7);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1855Qe
    public final void ADz(VC vc) {
        this.A00.A07 = vc;
        for (InterfaceC1855Qe interfaceC1855Qe : this.A00.A0H) {
            if (A01[4].charAt(30) != 'q') {
                throw new RuntimeException();
            }
            A01[0] = "QeMGbFFoOT7FNJ57RKOwk9Jq4PSH3GCD";
            interfaceC1855Qe.ADz(vc);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1855Qe
    public final void AE5(int i, long j, long j2) {
        Iterator it = this.A00.A0H.iterator();
        while (it.hasNext()) {
            ((InterfaceC1855Qe) it.next()).AE5(i, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.WE
    @MetaExoPlayerCustomization
    public final void AEa(C1934Tf c1934Tf) {
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            ((LJ) it.next()).AEa(c1934Tf);
        }
    }

    @Override // com.facebook.ads.redexgen.X.WE
    @MetaExoPlayerCustomization
    public final void AEb(List<C1936Th> list) {
        Iterator it = this.A00.A0I.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            String[] strArr = A01;
            if (strArr[2].charAt(9) == strArr[5].charAt(9)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "";
            strArr2[1] = "";
            if (zHasNext) {
                ((LJ) it.next()).AEb(list);
            } else {
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.YC
    public final void AEn(int i, long j) {
        Iterator it = this.A00.A0K.iterator();
        while (it.hasNext()) {
            ((YC) it.next()).AEn(i, j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.TS
    public final void AFx(Metadata metadata, long j) {
        for (TS ts : this.A00.A0J) {
            if (A01[4].charAt(30) != 'q') {
                throw new RuntimeException();
            }
            A01[0] = "SvUpNKWuGEySYhNFFwIH5w5ikbhc16eE";
            ts.AFx(metadata, j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.YC
    public final void AGm(Object obj, long j) {
        if (this.A00.A03 == obj) {
            Iterator it = this.A00.A0L.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        Iterator it2 = this.A00.A0K.iterator();
        while (it2.hasNext()) {
            ((YC) it2.next()).AGm(obj, j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.YC
    public final void AHX(String str, long j, long j2) {
        Iterator it = this.A00.A0K.iterator();
        while (it.hasNext()) {
            ((YC) it.next()).AHX(str, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.YC
    public final void AHY(O7 o7) {
        Iterator it = this.A00.A0K.iterator();
        while (it.hasNext()) {
            ((YC) it.next()).AHY(o7);
        }
        this.A00.A08 = null;
        this.A00.A0A = null;
    }

    @Override // com.facebook.ads.redexgen.X.YC
    public final void AHZ(O7 o7) {
        this.A00.A0A = o7;
        Iterator it = this.A00.A0K.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            String[] strArr = A01;
            if (strArr[3].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A01[0] = "FRbb1fiCbWCVoQ1qe3xdf1r3l5tYMl7U";
            if (zHasNext) {
                ((YC) it.next()).AHZ(o7);
            } else {
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.YC
    public final void AHe(VC vc) {
        this.A00.A08 = vc;
        Iterator it = this.A00.A0K.iterator();
        while (it.hasNext()) {
            ((YC) it.next()).AHe(vc);
        }
    }

    @Override // com.facebook.ads.redexgen.X.YC
    public final void AHl(C1944Tp c1944Tp) {
        Iterator it = this.A00.A0L.iterator();
        while (it.hasNext()) {
            ((NA) it.next()).AHk(c1944Tp.A03, c1944Tp.A01, c1944Tp.A02, c1944Tp.A00);
        }
        Iterator it2 = this.A00.A0K.iterator();
        while (it2.hasNext()) {
            ((YC) it2.next()).AHl(c1944Tp);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.A00.A0F(new Surface(surfaceTexture), true);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.A00.A0F(null, true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.A00.A0F(surfaceHolder.getSurface(), false);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.A00.A0F(null, false);
    }
}
