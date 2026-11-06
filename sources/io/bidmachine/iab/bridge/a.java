package io.bidmachine.iab.bridge;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import io.bidmachine.iab.mraid.MraidLog;
import io.bidmachine.iab.mraid.MraidWebView;
import io.bidmachine.iab.mraid.MraidWebViewController;
import io.bidmachine.iab.utils.Base32;
import io.bidmachine.iab.utils.Utils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.URLDecoder;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final Base32 a = new Base32();
    public static final /* synthetic */ boolean b = true;

    public static void a(MraidWebView mraidWebView, String str) {
        if (a(mraidWebView, str)) {
            return;
        }
        try {
            Pair pairA = a(a.decode(URLDecoder.decode(str, "UTF-8")));
            if (a(mraidWebView, (String) pairA.first, (String) pairA.second)) {
                return;
            }
            boolean z = b;
            if (!z && mraidWebView == null) {
                throw new AssertionError();
            }
            Object obj = mraidWebView.getContext().getApplicationContext().getSharedPreferences((String) pairA.first, 0).getAll().get(pairA.second);
            if (obj == null) {
                a(mraidWebView);
                return;
            }
            String strValueOf = String.valueOf(obj);
            if (a(mraidWebView, strValueOf)) {
                return;
            }
            if (!z && str == null) {
                throw new AssertionError();
            }
            a(mraidWebView, "fireReadDefaultsSuccessEvent", str, Base64.encodeToString(strValueOf.getBytes(), 2));
        } catch (Throwable th) {
            a(mraidWebView);
            MraidLog.e("NativeStorage", th);
        }
    }

    public static void b(MraidWebView mraidWebView, String str) {
        FileInputStream fileInputStreamOpenFileInput;
        ByteArrayOutputStream byteArrayOutputStream;
        if (a(mraidWebView, str)) {
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            String strDecode = a.decode(URLDecoder.decode(str, "UTF-8"));
            if (!b && mraidWebView == null) {
                throw new AssertionError();
            }
            Context applicationContext = mraidWebView.getContext().getApplicationContext();
            File file = strDecode.contains("/") ? new File(strDecode) : applicationContext.getFileStreamPath(strDecode);
            if (file != null && file.exists()) {
                fileInputStreamOpenFileInput = applicationContext.openFileInput(strDecode);
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    byte[] bArr = new byte[8192];
                    if (fileInputStreamOpenFileInput != null) {
                        while (true) {
                            int i = fileInputStreamOpenFileInput.read(bArr);
                            if (-1 == i) {
                                break;
                            } else {
                                byteArrayOutputStream.write(bArr, 0, i);
                            }
                        }
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (byteArray.length > 0) {
                        if (!b && str == null) {
                            throw new AssertionError();
                        }
                        a(mraidWebView, "fireReadFileSuccessEvent", str, Base64.encodeToString(byteArray, 2));
                    } else {
                        a(mraidWebView);
                    }
                    Utils.close(fileInputStreamOpenFileInput);
                    Utils.close(byteArrayOutputStream);
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    byteArrayOutputStream2 = byteArrayOutputStream;
                    try {
                        a(mraidWebView);
                        MraidLog.e("NativeStorage", th);
                        return;
                    } finally {
                        Utils.close(fileInputStreamOpenFileInput);
                        Utils.close(byteArrayOutputStream2);
                    }
                }
            }
            a(mraidWebView);
            Utils.close(null);
            Utils.close(null);
        } catch (Throwable th3) {
            th = th3;
            fileInputStreamOpenFileInput = null;
        }
    }

    public static void a(MraidWebView mraidWebView, String str, String str2) {
        if (a(mraidWebView, str, str2)) {
            return;
        }
        try {
            String strDecode = a.decode(URLDecoder.decode(str, "UTF-8"));
            byte[] bArrDecode = Base64.decode(URLDecoder.decode(str2, "UTF-8"), 2);
            Pair pairA = a(strDecode);
            if (a(mraidWebView, (String) pairA.first, (String) pairA.second)) {
                return;
            }
            if (!b && mraidWebView == null) {
                throw new AssertionError();
            }
            mraidWebView.getContext().getApplicationContext().getSharedPreferences((String) pairA.first, 0).edit().putString((String) pairA.second, new String(bArrDecode)).apply();
        } catch (Throwable th) {
            a(mraidWebView);
            MraidLog.e("NativeStorage", th);
        }
    }

    public static void a(MraidWebView mraidWebView) {
        MraidWebViewController controller;
        if (mraidWebView == null || (controller = mraidWebView.getController()) == null) {
            return;
        }
        controller.injectJs("nativeStorage.fireErrorEvent('internal error');");
    }

    public static void a(MraidWebView mraidWebView, String str, String str2, String str3) {
        MraidWebViewController controller;
        if (mraidWebView == null || (controller = mraidWebView.getController()) == null) {
            return;
        }
        controller.injectJs("nativeStorage." + str + "(\"" + str2 + "\", \"" + str3 + "\");");
    }

    public static Pair a(String str) {
        String[] strArrSplit = str.split("/");
        return new Pair(strArrSplit[0], strArrSplit[1]);
    }

    public static boolean a(MraidWebView mraidWebView, String... strArr) {
        if (mraidWebView == null || mraidWebView.isDestroyed() || mraidWebView.getContext() == null) {
            a(mraidWebView);
            return true;
        }
        if (strArr != null) {
            for (String str : strArr) {
                if (TextUtils.isEmpty(str)) {
                    a(mraidWebView);
                    return true;
                }
            }
        }
        return false;
    }

    public static void b(MraidWebView mraidWebView, String str, String str2) {
        if (a(mraidWebView, str, str2)) {
            return;
        }
        FileOutputStream fileOutputStreamOpenFileOutput = null;
        try {
            String strDecode = a.decode(URLDecoder.decode(str, "UTF-8"));
            byte[] bArrDecode = Base64.decode(URLDecoder.decode(str2, "UTF-8"), 2);
            if (!a(mraidWebView, strDecode, new String(bArrDecode))) {
                if (!b && mraidWebView == null) {
                    throw new AssertionError();
                }
                Context applicationContext = mraidWebView.getContext().getApplicationContext();
                if (strDecode.contains("/")) {
                    fileOutputStreamOpenFileOutput = new FileOutputStream(strDecode);
                } else {
                    fileOutputStreamOpenFileOutput = applicationContext.openFileOutput(strDecode, 0);
                }
                fileOutputStreamOpenFileOutput.write(bArrDecode);
            }
        } catch (Throwable th) {
            try {
                a(mraidWebView);
                MraidLog.e("NativeStorage", th);
            } finally {
                Utils.flush(null);
                Utils.close(null);
            }
        }
    }
}
