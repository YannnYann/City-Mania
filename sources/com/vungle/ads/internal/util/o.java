package com.vungle.ads.internal.util;

import android.os.Build;
import android.webkit.URLUtil;
import com.vungle.ads.AssetFailedToDeleteError;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes4.dex */
public abstract class o {
    public static n a = new n() { // from class: com.vungle.ads.internal.util.o$$ExternalSyntheticLambda1
        @Override // com.vungle.ads.internal.util.n
        public final ObjectInputStream a(InputStream inputStream) {
            return o.a(inputStream);
        }
    };
    public static final List b = CollectionsKt__CollectionsKt.listOf((Object[]) new Class[]{LinkedHashSet.class, HashSet.class, HashMap.class, ArrayList.class, File.class});

    public static final ObjectInputStream a(InputStream inputStream) {
        return new y(inputStream, b);
    }

    public static final void b(File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                Files.delete(file.toPath());
            } else {
                if (file.delete()) {
                    return;
                }
                new AssetFailedToDeleteError("Cannot delete " + file.getName()).logErrorNoReturnValue$vungle_ads_release();
            }
        } catch (Exception e) {
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Failed to delete ");
            sbA.append(file.getName());
            sbA.append(" with error :");
            sbA.append(e.getMessage());
            new AssetFailedToDeleteError(sbA.toString()).logErrorNoReturnValue$vungle_ads_release();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0026: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:11:0x0026 */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.io.Closeable, java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r3v11, types: [com.vungle.ads.internal.util.n] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final Object c(File file) throws Throwable {
        Closeable closeable;
        Closeable closeable2;
        Exception e;
        ObjectInputStream objectInputStreamA;
        ClassNotFoundException e2;
        IOException e3;
        ?? r1;
        Intrinsics.checkNotNullParameter(file, "file");
        ?? Exists = file.exists();
        ?? r2 = 0;
        Closeable closeable3 = null;
        try {
            if (Exists == 0) {
                return null;
            }
            try {
                Exists = new FileInputStream(file);
                try {
                    objectInputStreamA = a.a(Exists);
                    try {
                        Object object = objectInputStreamA.readObject();
                        a((Closeable) objectInputStreamA);
                        a((Closeable) Exists);
                        return object;
                    } catch (IOException e4) {
                        e3 = e4;
                        boolean z = v.a;
                        u.b("FileUtility", "IOException: " + e3.getMessage());
                        r1 = Exists;
                        a((Closeable) objectInputStreamA);
                        a((Closeable) r1);
                        try {
                            a(file, (Set) null);
                        } catch (IOException unused) {
                        }
                        return null;
                    } catch (ClassNotFoundException e5) {
                        e2 = e5;
                        boolean z2 = v.a;
                        u.b("FileUtility", "ClassNotFoundException: " + e2.getMessage());
                        r1 = Exists;
                        a((Closeable) objectInputStreamA);
                        a((Closeable) r1);
                        a(file, (Set) null);
                        return null;
                    } catch (Exception e6) {
                        e = e6;
                        boolean z3 = v.a;
                        u.b("FileUtility", "cannot read serializable " + e.getMessage());
                        r1 = Exists;
                        a((Closeable) objectInputStreamA);
                        a((Closeable) r1);
                        a(file, (Set) null);
                        return null;
                    }
                } catch (IOException e7) {
                    e3 = e7;
                    objectInputStreamA = null;
                } catch (ClassNotFoundException e8) {
                    e2 = e8;
                    objectInputStreamA = null;
                } catch (Exception e9) {
                    e = e9;
                    objectInputStreamA = null;
                } catch (Throwable th) {
                    th = th;
                    closeable2 = closeable3;
                    r2 = Exists;
                    a(closeable2);
                    a((Closeable) r2);
                    throw th;
                }
            } catch (IOException e10) {
                e3 = e10;
                Exists = 0;
                objectInputStreamA = null;
            } catch (ClassNotFoundException e11) {
                e2 = e11;
                Exists = 0;
                objectInputStreamA = null;
            } catch (Exception e12) {
                e = e12;
                Exists = 0;
                objectInputStreamA = null;
            } catch (Throwable th2) {
                th = th2;
                closeable2 = null;
                a(closeable2);
                a((Closeable) r2);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            closeable3 = closeable;
        }
    }

    public static String d(File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (!file.exists()) {
            return null;
        }
        try {
            return FilesKt__FileReadWriteKt.readText$default(file, null, 1, null);
        } catch (IOException e) {
            boolean z = v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("IOException: ");
            sbA.append(e.getMessage());
            u.b("FileUtility", sbA.toString());
            return null;
        } catch (Exception e2) {
            boolean z2 = v.a;
            StringBuilder sbA2 = com.iab.omid.library.vungle.internal.l.a("cannot read string ");
            sbA2.append(e2.getMessage());
            u.b("FileUtility", sbA2.toString());
            return null;
        }
    }

    public static final void a(File folder, Set set) {
        if (folder != null) {
            try {
                if (folder.exists()) {
                    if (folder.isDirectory()) {
                        if (set != null && set.contains(folder.getName())) {
                            boolean z = v.a;
                            u.a("FileUtility", "Skipping deletion of directory: " + folder.getName());
                            return;
                        }
                        Intrinsics.checkNotNullParameter(folder, "folder");
                        File[] fileArrListFiles = folder.listFiles();
                        if (fileArrListFiles != null) {
                            for (File file : fileArrListFiles) {
                                a(file, set);
                            }
                        }
                    }
                    if (set != null && set.contains(folder.getName())) {
                        boolean z2 = v.a;
                        u.a("FileUtility", "Skipping deletion of file: " + folder.getName());
                        return;
                    }
                    if (folder.delete()) {
                        return;
                    }
                    boolean z3 = v.a;
                    u.a("FileUtility", "Failed to delete file: " + folder);
                }
            } catch (Exception e) {
                boolean z4 = v.a;
                StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Failed to delete file: ");
                sbA.append(e.getLocalizedMessage());
                u.b("FileUtility", sbA.toString());
            }
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static final void a(File file, Serializable serializable) throws Throwable {
        Throwable th;
        ObjectOutputStream objectOutputStream;
        IOException e;
        OutputStream fileOutputStream;
        Intrinsics.checkNotNullParameter(file, "file");
        if (file.exists()) {
            b(file);
        }
        if (serializable == null) {
            return;
        }
        OutputStream outputStream = null;
        try {
            fileOutputStream = new FileOutputStream(file);
        } catch (IOException e2) {
            e = e2;
            objectOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream = null;
            fileOutputStream = outputStream;
            outputStream = objectOutputStream;
            a(outputStream);
            a(fileOutputStream);
            throw th;
        }
        try {
            objectOutputStream = new ObjectOutputStream(fileOutputStream);
            try {
                objectOutputStream.writeObject(serializable);
                objectOutputStream.reset();
            } catch (IOException e3) {
                e = e3;
                outputStream = fileOutputStream;
                try {
                    boolean z = v.a;
                    u.b("FileUtility", String.valueOf(e.getMessage()));
                    fileOutputStream = outputStream;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = outputStream;
                    outputStream = objectOutputStream;
                    a(outputStream);
                    a(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                outputStream = objectOutputStream;
                a(outputStream);
                a(fileOutputStream);
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            objectOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            a(outputStream);
            a(fileOutputStream);
            throw th;
        }
        a(objectOutputStream);
        a(fileOutputStream);
    }

    public static void a(File file, String str) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (str == null) {
            return;
        }
        try {
            FilesKt__FileReadWriteKt.writeText(file, str, Charsets.UTF_8);
        } catch (IOException e) {
            boolean z = v.a;
            u.b("FileUtility", String.valueOf(e.getMessage()));
        }
    }

    public static boolean a(String str) {
        if (str == null) {
            return false;
        }
        try {
            if (StringsKt__StringsKt.isBlank(str)) {
                return false;
            }
            return HttpUrl.Companion.parse(str) != null;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String a(String url, String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        String strGuessFileName = URLUtil.guessFileName(url, null, str);
        Intrinsics.checkNotNullExpressionValue(strGuessFileName, "guessFileName(url, null, ext)");
        return strGuessFileName;
    }
}
