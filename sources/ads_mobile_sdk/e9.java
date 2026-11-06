package ads_mobile_sdk;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class e9 {
    public final File a;
    public volatile boolean b;

    public e9(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = new File(context.getCacheDir(), "gma_ad_responses");
    }

    public static String a(String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = content.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            Intrinsics.checkNotNull(bArrDigest);
            for (byte b : bArrDigest) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String str = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                sb.append(str);
            }
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (Exception e) {
            xs3.a("Failed to calculate checksum", e, 4);
            return null;
        }
    }

    public final v01 b(String filename, String content) {
        v01 m01Var;
        File fileB;
        v01 j01Var;
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(content, "content");
        s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_FILE_WRITE;
        WeakHashMap weakHashMap = hs3.a;
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
        try {
            if (this.b) {
                m01Var = new q01(Unit.INSTANCE);
            } else {
                if (!this.b) {
                    this.b = this.a.exists();
                    if (!this.b && !this.a.mkdirs()) {
                        m01Var = new m01("Failed to create cache directory");
                    }
                }
                this.b = true;
                m01Var = new q01(Unit.INSTANCE);
            }
            if (m01Var instanceof i01) {
                j01Var = (i01) m01Var;
            } else {
                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                String strA = a(content);
                if (strA == null) {
                    j01Var = new m01("Failed to calculate checksum");
                } else {
                    File fileB2 = b(filename + ".tmp");
                    if (fileB2 == null || (fileB = b(filename)) == null) {
                        j01Var = new m01("Invalid filename");
                    } else {
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(fileB2);
                            try {
                                byte[] bytes = content.getBytes(Charsets.UTF_8);
                                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                                fileOutputStream.write(bytes);
                                Unit unit = Unit.INSTANCE;
                                CloseableKt.closeFinally(fileOutputStream, null);
                                if (fileB2.renameTo(fileB)) {
                                    j01Var = new q01(strA);
                                } else {
                                    fileB2.delete();
                                    j01Var = new m01("Failed to rename temp file");
                                }
                            } finally {
                            }
                        } catch (IOException e) {
                            fileB2.delete();
                            j01Var = new j01(e, null, "Failed to write to temp file", 2);
                        }
                    }
                }
            }
            if (j01Var instanceof i01) {
                xs3.a((i01) j01Var, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return j01Var;
        } catch (Throwable th) {
            try {
                rr3VarA.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3VarA.a(th);
                }
                if (th instanceof TimeoutCancellationException) {
                    throw new i21(th);
                }
                if (th instanceof CancellationException) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            } finally {
            }
        }
    }

    public final List a() {
        List list;
        if (!this.b) {
            this.b = this.a.exists();
            if (!this.b) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
        }
        File[] fileArrListFiles = this.a.listFiles();
        return (fileArrListFiles == null || (list = ArraysKt___ArraysKt.toList(fileArrListFiles)) == null) ? CollectionsKt__CollectionsKt.emptyList() : list;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0080 A[Catch: all -> 0x002e, TRY_LEAVE, TryCatch #3 {all -> 0x002e, blocks: (B:3:0x0012, B:11:0x0030, B:13:0x0036, B:28:0x007c, B:30:0x0080, B:14:0x0040, B:16:0x0046, B:18:0x0050, B:20:0x0056, B:22:0x0060, B:25:0x006c, B:27:0x0073, B:6:0x0018, B:8:0x0024), top: B:64:0x0012, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final ads_mobile_sdk.v01 a(java.lang.String r5, java.lang.String r6) {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e9.a(java.lang.String, java.lang.String):ads_mobile_sdk.v01");
    }

    public final File b(String str) {
        File file = new File(this.a, str);
        try {
            String canonicalPath = file.getCanonicalPath();
            Intrinsics.checkNotNullExpressionValue(canonicalPath, "getCanonicalPath(...)");
            String canonicalPath2 = this.a.getCanonicalPath();
            Intrinsics.checkNotNullExpressionValue(canonicalPath2, "getCanonicalPath(...)");
            if (StringsKt__StringsJVMKt.startsWith$default(canonicalPath, canonicalPath2, false, 2, null)) {
                return file;
            }
            xs3.a("Path traversal detected: " + str, null, 6);
            return null;
        } catch (IOException e) {
            xs3.a("Failed to resolve canonical path for " + str, e, 4);
            return null;
        }
    }
}
