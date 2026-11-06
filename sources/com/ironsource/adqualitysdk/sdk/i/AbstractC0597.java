package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᖨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0597 {

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static Field f2541;

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static Field f2542;

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static Field f2543;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static Field f2544;

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static Object f2545;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static Class f2546;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f2558 = StringFog.decrypt("5FgCuZNIQzDRXwq4\n", "pTZmy/whJ2U=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String f2557 = StringFog.decrypt("RIeACAaoZ6lloZ0/D69hsA==\n", "KcjuS2rBBMI=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f2556 = StringFog.decrypt("V6+icFrn7MR2ib9QUPzq3g==\n", "OuDMJDWSj6w=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f2555 = StringFog.decrypt("VYUv1aU5\n", "ONNGsNJKTZ4=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f2554 = StringFog.decrypt("SOVpj2IDS5xX4G6aeQ==\n", "JakA/BZmJfk=\n");

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f2553 = StringFog.decrypt("+vco3uKXFJvz8Tk=\n", "nZJcl4zkYPo=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f2552 = StringFog.decrypt("h4TyVDnFM7qMlQ==\n", "4OGGEFyjUs8=\n");

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f2551 = StringFog.decrypt("fysxlec9vC17Fyu55z6h\n", "EmRf3Ilb02E=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f2550 = StringFog.decrypt("IqlfWqRjX0oqklh2pUJGVTuDX3y5\n", "T+YxGcsOLyY=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f2549 = StringFog.decrypt("27wt/C4WQK3ElifgNQBEqdiWMQ==\n", "tvNDrFxzMMw=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f2548 = StringFog.decrypt("v+31B8UObw69z+s4xR9hAbvR7zHODnY=\n", "0qKbVKBrBE0=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f2547 = StringFog.decrypt("gQoIpnv9YvKNPgiw\n", "7EdtwhKcMp4=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static View.OnTouchListener m1352(View view) {
        try {
            Object objM1354 = m1354(view);
            if (objM1354 == null) {
                return null;
            }
            Class<?> cls = objM1354.getClass();
            synchronized (AbstractC0061.class) {
                try {
                    if (f2541 == null) {
                        f2541 = m1355(cls, f2556);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return (View.OnTouchListener) f2541.get(objM1354);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static View.OnClickListener m1353(View view) {
        try {
            Object objM1354 = m1354(view);
            if (objM1354 == null) {
                return null;
            }
            Class<?> cls = objM1354.getClass();
            synchronized (AbstractC0061.class) {
                try {
                    if (f2542 == null) {
                        f2542 = m1355(cls, f2557);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return (View.OnClickListener) f2542.get(objM1354);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ArrayList m1356() {
        try {
            if (f2546 == null || f2545 == null) {
                Class<?> cls = Class.forName(StringFog.decrypt("6WwITZwf5ZD+awlI3SHo0OxtG3KSGODZ7XArU5wU4NI=\n", "iAJsP/N2gb4=\n"));
                f2546 = cls;
                f2545 = cls.getMethod(f2553, null).invoke(null, null);
            }
            Class cls2 = f2546;
            Object obj = f2545;
            if (f2544 == null) {
                Field declaredField = cls2.getDeclaredField(f2555);
                f2544 = declaredField;
                declaredField.setAccessible(true);
            }
            Object obj2 = f2544.get(obj);
            if (obj2 instanceof List) {
                return new ArrayList((List) obj2);
            }
            if (obj2 instanceof View[]) {
                return new ArrayList(Arrays.asList((View[]) obj2));
            }
            return new ArrayList();
        } catch (Throwable th) {
            AbstractC0182.m1148(f2558, StringFog.decrypt("nEiIsEuxk3etTpOxXrGje7delah08Jpzvl+I/0/4kWWqANo=\n", "2Tr63zmR9BI=\n") + th.getLocalizedMessage());
            return new ArrayList();
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1359(MediaPlayer mediaPlayer, InterfaceC0089 interfaceC0089) {
        try {
            Field fieldM1355 = m1355(MediaPlayer.class, f2551);
            MediaPlayer.OnInfoListener onInfoListener = (MediaPlayer.OnInfoListener) fieldM1355.get(mediaPlayer);
            if (onInfoListener instanceof C0088) {
                return;
            }
            fieldM1355.set(mediaPlayer, new C0088(onInfoListener, interfaceC0089));
        } catch (Exception e) {
            AbstractC1003.m1592(f2558, StringFog.decrypt("Ruiq9klrnDwD6L3pVyqWN2z0lfxfIpQbTfy31VI4gTdN/6o=\n", "I5rYmTtL9VI=\n"), (Throwable) e, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1360(MediaPlayer mediaPlayer, InterfaceC0123 interfaceC0123) {
        try {
            Field fieldM1355 = m1355(MediaPlayer.class, f2550);
            MediaPlayer.OnCompletionListener onCompletionListener = (MediaPlayer.OnCompletionListener) fieldM1355.get(mediaPlayer);
            if (onCompletionListener instanceof C0093) {
                return;
            }
            fieldM1355.set(mediaPlayer, new C0093(onCompletionListener, interfaceC0123));
        } catch (Exception e) {
            AbstractC1003.m1592(f2558, StringFog.decrypt("9XwafQNsD/2wfA1iHS0F9t9gJXcVJQfQ/2MYfhQ4D/z+QgFhBSkI9uI=\n", "kA5oEnFMZpM=\n"), (Throwable) e, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1358(MediaPlayer mediaPlayer, InterfaceC0080 interfaceC0080) {
        try {
            Field fieldM1355 = m1355(MediaPlayer.class, f2549);
            MediaPlayer.OnPreparedListener onPreparedListener = (MediaPlayer.OnPreparedListener) fieldM1355.get(mediaPlayer);
            if (onPreparedListener instanceof C0079) {
                return;
            }
            fieldM1355.set(mediaPlayer, new C0079(onPreparedListener, interfaceC0080));
        } catch (Exception e) {
            AbstractC1003.m1592(f2558, StringFog.decrypt("vhHpj5ZaACf7Ef6QiBsKLJQN1oWAEwgZqQbrgZYfDQWyEO+Fih8b\n", "22Ob4OR6aUk=\n"), (Throwable) e, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1357(MediaPlayer mediaPlayer, InterfaceC0065 interfaceC0065) {
        try {
            Field fieldM1355 = m1355(MediaPlayer.class, f2548);
            MediaPlayer.OnSeekCompleteListener onSeekCompleteListener = (MediaPlayer.OnSeekCompleteListener) fieldM1355.get(mediaPlayer);
            if (onSeekCompleteListener instanceof C0062) {
                return;
            }
            fieldM1355.set(mediaPlayer, new C0062(onSeekCompleteListener, interfaceC0065));
        } catch (Exception e) {
            AbstractC1003.m1592(f2558, StringFog.decrypt("koK+pGt8U9DXgqm7dT1Z27ien658N3nRmoCgrm05dteEhKmlfC4=\n", "9/DMyxlcOr4=\n"), (Throwable) e, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Object m1354(View view) {
        try {
            synchronized (AbstractC0061.class) {
                try {
                    if (f2543 == null) {
                        f2543 = m1355(View.class, f2554);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return f2543.get(view);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Field m1355(Class cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Exception e) {
            AbstractC1003.m1592(f2558, StringFog.decrypt("DkvgP/nnPv1LXvckz6I0/wpL9zTNrjL/Dw==\n", "azmSUIvHV5M=\n"), (Throwable) e, false);
            return null;
        }
    }
}
