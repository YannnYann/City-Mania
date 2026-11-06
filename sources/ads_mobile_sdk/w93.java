package ads_mobile_sdk;

import android.content.Context;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import androidx.core.content.ContextCompat;
import com.ironsource.C3522b4;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public abstract class w93 {
    public static final String[] a = {"com.android.", "com.google.", "com.chrome.", "com.nest.", "com.waymo.", "com.waze", "com.waze."};
    public static final String[] b;
    public static final String[] c;

    static {
        String str = Build.HARDWARE;
        b = new String[]{C3522b4.i.I0, (str.equals("goldfish") || str.equals("ranchu")) ? "androidx.test.services.storage.runfiles" : ""};
        int i = Build.VERSION.SDK_INT;
        c = new String[]{i <= 25 ? "com.google.android.inputmethod.latin.inputcontent" : "", i <= 25 ? "com.google.android.inputmethod.latin.dev.inputcontent" : "", "com.google.android.apps.docs.storage.legacy"};
    }

    public static void a(ParcelFileDescriptor parcelFileDescriptor, String str) throws IOException {
        try {
            StructStat structStatFstat = Os.fstat(parcelFileDescriptor.getFileDescriptor());
            try {
                StructStat structStatLstat = Os.lstat(str);
                if (OsConstants.S_ISLNK(structStatLstat.st_mode)) {
                    throw new FileNotFoundException("Can't open file: " + str);
                }
                if (structStatFstat.st_dev == structStatLstat.st_dev && structStatFstat.st_ino == structStatLstat.st_ino) {
                    return;
                }
                throw new FileNotFoundException("Can't open file: " + str);
            } catch (ErrnoException e) {
                throw new IOException(e);
            }
        } catch (ErrnoException e2) {
            throw new IOException(e2);
        }
    }

    public static boolean a(final Context context, String str) throws IOException {
        try {
            for (File file : (File[]) new Callable() { // from class: ads_mobile_sdk.w93$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return ContextCompat.getExternalFilesDirs(context, null);
                }
            }.call()) {
                if (file != null) {
                    String canonicalPath = file.getCanonicalPath();
                    if (!canonicalPath.endsWith("/")) {
                        canonicalPath = canonicalPath.concat("/");
                    }
                    if (str.startsWith(canonicalPath)) {
                        return true;
                    }
                }
            }
            try {
                for (File file2 : (File[]) new Callable() { // from class: ads_mobile_sdk.w93$$ExternalSyntheticLambda1
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return ContextCompat.getExternalCacheDirs(context);
                    }
                }.call()) {
                    if (file2 != null) {
                        String canonicalPath2 = file2.getCanonicalPath();
                        if (!canonicalPath2.endsWith("/")) {
                            canonicalPath2 = canonicalPath2.concat("/");
                        }
                        if (str.startsWith(canonicalPath2)) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (NullPointerException e) {
                throw e;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        } catch (NullPointerException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00aa, code lost:
    
        if (r13 == false) goto L69;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005c A[PHI: r1 r2
      0x005c: PHI (r1v5 java.lang.String) = (r1v4 java.lang.String), (r1v11 java.lang.String) binds: [B:11:0x0041, B:15:0x0056] A[DONT_GENERATE, DONT_INLINE]
      0x005c: PHI (r2v8 android.content.pm.ProviderInfo) = (r2v7 android.content.pm.ProviderInfo), (r2v9 android.content.pm.ProviderInfo) binds: [B:11:0x0041, B:15:0x0056] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.io.FileOutputStream a(android.content.Context r13, android.net.Uri r14, ads_mobile_sdk.v93 r15) throws java.io.FileNotFoundException {
        /*
            Method dump skipped, instruction units count: 391
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.w93.a(android.content.Context, android.net.Uri, ads_mobile_sdk.v93):java.io.FileOutputStream");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(android.content.Context r2, android.os.ParcelFileDescriptor r3, android.net.Uri r4, ads_mobile_sdk.v93 r5) throws java.io.IOException {
        /*
            java.io.File r0 = new java.io.File
            java.lang.String r4 = r4.getPath()
            r0.<init>(r4)
            java.lang.String r4 = r0.getCanonicalPath()
            a(r3, r4)
            java.lang.String r3 = "/proc/"
            boolean r3 = r4.startsWith(r3)
            if (r3 != 0) goto L9d
            java.lang.String r3 = "/data/misc/"
            boolean r3 = r4.startsWith(r3)
            if (r3 != 0) goto L9d
            r5.getClass()
            com.google.common.collect.ImmutableList r3 = r5.c
            com.google.common.collect.UnmodifiableIterator r3 = r3.iterator()
            boolean r0 = r3.hasNext()
            if (r0 != 0) goto L90
            java.io.File r3 = androidx.core.content.ContextCompat.getDataDir(r2)
            java.lang.String r0 = "/"
            if (r3 == 0) goto L4c
            java.lang.String r3 = r3.getCanonicalPath()
            boolean r1 = r3.endsWith(r0)
            if (r1 != 0) goto L45
            java.lang.String r3 = r3.concat(r0)
        L45:
            boolean r3 = r4.startsWith(r3)
            if (r3 == 0) goto L65
            goto L85
        L4c:
            java.io.File r3 = android.os.Environment.getDataDirectory()
            java.lang.String r3 = r3.getCanonicalPath()
            boolean r1 = r3.endsWith(r0)
            if (r1 != 0) goto L5e
            java.lang.String r3 = r3.concat(r0)
        L5e:
            boolean r3 = r4.startsWith(r3)
            if (r3 == 0) goto L65
            goto L85
        L65:
            android.content.Context r3 = androidx.core.content.ContextCompat.createDeviceProtectedStorageContext(r2)
            if (r3 == 0) goto L87
            java.io.File r3 = androidx.core.content.ContextCompat.getDataDir(r3)
            if (r3 == 0) goto L87
            java.lang.String r3 = r3.getCanonicalPath()
            boolean r1 = r3.endsWith(r0)
            if (r1 != 0) goto L7f
            java.lang.String r3 = r3.concat(r0)
        L7f:
            boolean r3 = r4.startsWith(r3)
            if (r3 == 0) goto L87
        L85:
            r2 = 1
            goto L8b
        L87:
            boolean r2 = a(r2, r4)
        L8b:
            boolean r3 = r5.a
            if (r2 != r3) goto L9d
            return
        L90:
            java.lang.Object r2 = r3.next()
            r2.getClass()
            java.lang.ClassCastException r2 = new java.lang.ClassCastException
            r2.<init>()
            throw r2
        L9d:
            java.io.FileNotFoundException r2 = new java.io.FileNotFoundException
            java.lang.String r3 = "Can't open file: "
            java.lang.String r3 = r3.concat(r4)
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.w93.a(android.content.Context, android.os.ParcelFileDescriptor, android.net.Uri, ads_mobile_sdk.v93):void");
    }
}
