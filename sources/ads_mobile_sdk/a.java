package ads_mobile_sdk;

import android.util.Base64;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public MessageDigest a;
    public final ts3 b;
    public final Object c = new Object();
    public boolean d = false;
    public SecureRandom e;

    public a(ts3 ts3Var) {
        this.b = ts3Var;
    }

    public final byte[] a(byte[] bArr) {
        byte[] bArrDigest;
        synchronized (this.c) {
            this.a.reset();
            this.a.update(bArr);
            bArrDigest = this.a.digest();
        }
        return bArrDigest;
    }

    public final byte[] a(byte[] bArr, String str, boolean z) {
        byte[] bytes;
        int i = z ? 239 : 255;
        Preconditions.checkArgument(bArr.length <= i);
        ByteBuffer byteBufferPut = ByteBuffer.allocate(i + 1).put((byte) bArr.length);
        if (bArr.length < i) {
            int length = i - bArr.length;
            byte[] bArr2 = new byte[length];
            this.e.nextBytes(bArr2);
            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length + length);
            System.arraycopy(bArr2, 0, bArrCopyOf, bArr.length, length);
            bArr = bArrCopyOf;
        }
        byte[] bArrArray = byteBufferPut.put(bArr).array();
        if (z) {
            bArrArray = ByteBuffer.allocate(256).put(a(bArrArray)).put(bArrArray).array();
        }
        byte[] bArr3 = new byte[256];
        for (ro0 ro0Var : new ep0().K2) {
            ro0Var.a(bArrArray, bArr3);
        }
        if (!Strings.isNullOrEmpty(str)) {
            if (str.length() > 32) {
                bytes = str.substring(0, 32).getBytes(StandardCharsets.UTF_8);
            } else {
                bytes = str.getBytes(StandardCharsets.UTF_8);
            }
            c cVar = new c(bytes);
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < 256; i4++) {
                i2 = (i2 + 1) & 255;
                byte[] bArr4 = cVar.a;
                byte b = bArr4[i2];
                i3 = (i3 + b) & 255;
                bArr4[i2] = bArr4[i3];
                bArr4[i3] = b;
                bArr3[i4] = (byte) (bArr4[(bArr4[i2] + b) & 255] ^ bArr3[i4]);
            }
        }
        return bArr3;
    }

    public final String a(fh fhVar, String str) {
        try {
            return Base64.encodeToString(((bi) a(str, fhVar.c()).b()).c(), 11);
        } catch (IllegalArgumentException unused) {
            return a(ug.PSN_ENCODE_SIZE_FAIL, str);
        }
    }

    public final ai a(String str, byte[] bArr) {
        ai aiVarV = bi.v();
        aiVarV.b(du.a(a(bArr)));
        int length = ((bArr.length - 1) / 255) + 1;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < length; i++) {
            int i2 = i * 255;
            int length2 = i2 + 255;
            if (bArr.length <= length2) {
                length2 = bArr.length;
            }
            arrayList.add(Arrays.copyOfRange(bArr, i2, length2));
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            aiVarV.a(du.a(a((byte[]) it.next(), str, false)));
        }
        return aiVarV;
    }

    public final String a(ug ugVar, String str) {
        return Base64.encodeToString(a(((fh) fh.D().t(ugVar.a).b()).c(), str, true), 11);
    }

    public final void a() {
        boolean z;
        synchronized (this) {
            z = this.d;
        }
        if (z) {
            return;
        }
        a(new SecureRandom());
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0033: INVOKE (r2 I:ads_mobile_sdk.qr3) VIRTUAL call: ads_mobile_sdk.qr3.a():void A[Catch: all -> 0x0031, MD:():void (m), TRY_ENTER] (LINE:1162), block:B:20:0x0033 */
    public final synchronized void a(SecureRandom secureRandom) {
        qr3 qr3VarA;
        try {
            ts3 ts3Var = this.b;
            qr3 qr3Var = new qr3(lq0.EVENT_ID_FALLBACK_INIT_OBFUSCATOR, ts3Var.b, ts3Var.a);
            try {
                qr3Var.b();
                this.e = secureRandom;
                this.a = MessageDigest.getInstance("MD5");
                this.d = true;
            } catch (NoSuchAlgorithmException e) {
                qr3Var.a(e);
            } catch (Throwable th) {
                qr3Var.a(th);
                throw th;
            }
            qr3Var.a();
        } catch (Throwable th2) {
            qr3VarA.a();
            throw th2;
        }
    }
}
