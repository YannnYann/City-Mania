package com.facebook.ads.redexgen.X;

import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.gC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HandlerC2480gC extends Handler {
    public static byte[] A0A;
    public static String[] A0B = {"gcJlMo3lQ2pvKCdW2p1sJtuziP4vmf3g", "UeVkxUw", "", "mK9oSbAokt8TQ0dXUmD3wWyanMNanYZS", "2sppJEO", "qJx5aWB0ThxzYc01mDGkt7c3QG7aYNlh", "VEMLINTEzdP6zY82lzj", "ayakGQouLRgcgrHEvJCPTB1FEKY99m"};
    public Messenger A00;
    public boolean A01;
    public boolean A02;
    public final ServiceConnection A03;
    public final Handler A04;
    public final Messenger A05;
    public final K6 A06;
    public final C1643Hi A07;
    public final C1642Hh A08;
    public final AbstractRunnableC3004oq A09;

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 112);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A0A = new byte[]{98, 109, 101, 25, 3, 103, 96, 122, 113, 124, 120, 113, 111, 126, 126, 113, 97, 124, 103, 107, 96, 122, 111, 122, 103, 97, 96, 113, 101, 107, 119, 0, 55, 63, 61, 38, 55, 114, 33, 55, 32, 36, 59, 49, 55, 114, 55, 32, 32, 61, 32, 124, 37, 34, 36, 41, 55, 50, 41, 63, 50, 41, 61, 51, 47, 58, 37, 41, 59, 24, 53, 60, 41};
    }

    static {
        A07();
    }

    public HandlerC2480gC(C1643Hi c1643Hi, K6 k6) {
        super(Looper.getMainLooper());
        this.A04 = new Handler(Looper.getMainLooper());
        this.A03 = new ServiceConnectionC2479gB(this);
        this.A07 = c1643Hi;
        this.A08 = c1643Hi.A02();
        this.A05 = new Messenger(this);
        this.A06 = k6;
        this.A09 = new C1694Ji(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        if (this.A01) {
            A0C();
            if (A0B[0].charAt(10) != 'p') {
                throw new RuntimeException();
            }
            A0B[0] = "nLMfglhqWUp8cQyLFKCyrpcnfEaexaDa";
            this.A00 = null;
        }
        this.A06.A0A();
        this.A06.A09();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A06() {
        /*
            Method dump skipped, instruction units count: 382
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.HandlerC2480gC.A06():void");
    }

    private void A08(Messenger messenger, int i, Bundle bundle) throws RemoteException {
        Message messageObtain = Message.obtain((Handler) null, i);
        messageObtain.replyTo = this.A05;
        if (bundle != null) {
            messageObtain.setData(bundle);
        }
        messageObtain.getData().putString(A04(52, 13, 6), this.A06.A04());
        messenger.send(messageObtain);
    }

    public static void A0B(C1643Hi c1643Hi, String str) {
        c1643Hi.A0F().AJ5(str);
        InterfaceC2777l7 interfaceC2777l7A0G = c1643Hi.A0G();
        if (interfaceC2777l7A0G != null && interfaceC2777l7A0G.A7O() != null && interfaceC2777l7A0G.A7K() != null) {
            interfaceC2777l7A0G.A7O().onError(interfaceC2777l7A0G.A7K(), AdError.AD_PRESENTATION_ERROR);
        }
    }

    public final void A0C() {
        if (this.A01) {
            this.A07.A0F().AJU();
            this.A01 = false;
            this.A08.unbindService(this.A03);
        }
    }

    public final void A0D(C1643Hi c1643Hi, int i) {
        this.A07.A0F().AJS();
        AdActivityIntent adActivityIntentA06 = C3022p8.A06(c1643Hi);
        adActivityIntentA06.putExtra(A04(65, 8, 60), EnumC2980oR.A0G);
        adActivityIntentA06.putExtra(A04(52, 13, 6), this.A06.A04());
        adActivityIntentA06.putExtra(A04(5, 26, 94), i);
        try {
            int usedContext = C3022p8.A00(c1643Hi, adActivityIntentA06);
            this.A07.A0F().AJT(usedContext);
        } catch (C3020p6 e) {
            String strA04 = A04(0, 5, 83);
            Throwable cause = e.getCause();
            if (cause != null) {
                strA04 = strA04 + cause.toString();
            }
            A0B(c1643Hi, strA04);
        }
    }

    public final void A0E(boolean z) {
        C2482gE bindResult = C2484gG.A01(this.A08, z, this.A03);
        this.A01 = bindResult.A00 == 0;
        if (this.A01) {
            this.A07.A0F().AJ7();
            if (this.A00 == null) {
                this.A04.postDelayed(this.A09, AbstractC2891my.A00(this.A08));
                return;
            }
            return;
        }
        this.A07.A0F().AJF();
        this.A02 = false;
        this.A06.A0A();
        this.A06.A09();
    }

    public final boolean A0F(int i, Bundle bundle) {
        try {
            Messenger service = this.A00;
            if (service != null) {
                A08(service, i, bundle);
                return true;
            }
            return false;
        } catch (RemoteException e) {
            A0C();
            this.A07.A0F().AJA(e);
            return false;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (message.what == 3) {
                return;
            }
            if (message.what == 20 || message.what == 30 || message.what == 40) {
                if (message.what == 20) {
                    this.A07.A0F().AJP();
                    AbstractC2891my.A09(this.A08);
                } else {
                    this.A07.A0F().AJO(message.what);
                }
                A05();
                return;
            }
            String adId = message.getData().getString(A04(52, 13, 6));
            if (!this.A06.A04().equals(adId)) {
                this.A07.A0F().AJV();
            } else if (message.what == 2001 || message.what == 1011) {
                C2484gG.A04(this.A08, message);
            } else {
                this.A07.A0F().AJG(message.what);
                this.A06.A0D(message);
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
