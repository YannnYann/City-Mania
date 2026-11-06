package io.bidmachine.util.file;

import android.content.Context;
import android.net.Uri;
import com.ironsource.C3558d4;
import java.io.File;
import kotlin.Unit;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FileUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class FileUtilsKt {
    public static final boolean existsSafely(File file) {
        Boolean boolValueOf;
        Intrinsics.checkNotNullParameter(file, "<this>");
        try {
            boolValueOf = Boolean.valueOf(file.exists());
        } catch (Throwable unused) {
            boolValueOf = null;
        }
        return Intrinsics.areEqual(boolValueOf, Boolean.TRUE);
    }

    public static final boolean hasContent(File file) {
        return file != null && existsSafely(file) && file.length() > 0;
    }

    public static final String readSafely(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        try {
            return FilesKt__FileReadWriteKt.readText$default(file, null, 1, null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final Uri toUri(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Uri uriFromFile = Uri.fromFile(file);
        Intrinsics.checkNotNullExpressionValue(uriFromFile, "fromFile(this)");
        return uriFromFile;
    }

    public static final Uri toUriSafely(File file) {
        if (file == null) {
            return null;
        }
        try {
            return toUri(file);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final File createFile(File file, String childPathname) {
        Intrinsics.checkNotNullParameter(childPathname, "childPathname");
        return new File(file, childPathname);
    }

    public static final File createSubDir(File file, String childPathname) {
        Intrinsics.checkNotNullParameter(childPathname, "childPathname");
        File fileCreateFile = createFile(file, childPathname);
        if (existsSafely(fileCreateFile) || fileCreateFile.mkdirs()) {
            return fileCreateFile;
        }
        return null;
    }

    public static final File createTempFile(File file, String tempFilePrefix) {
        Intrinsics.checkNotNullParameter(tempFilePrefix, "tempFilePrefix");
        return createFile(file, tempFilePrefix + System.nanoTime());
    }

    public static /* synthetic */ File createTempFile$default(File file, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = C3558d4.D;
        }
        return createTempFile(file, str);
    }

    public static final File createFileByUrl(File file, String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        String strGenerateFileName = FileUtils.generateFileName(url);
        if (strGenerateFileName != null) {
            return createFile(file, strGenerateFileName);
        }
        return null;
    }

    public static final boolean deleteFile(File file) {
        Boolean boolValueOf;
        File[] fileArrListFiles;
        if (file == null || !existsSafely(file)) {
            return true;
        }
        try {
            if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                Intrinsics.checkNotNullExpressionValue(fileArrListFiles, "listFiles()");
                for (File file2 : fileArrListFiles) {
                    FileUtils.deleteFile(file2);
                }
            }
            boolValueOf = Boolean.valueOf(file.delete());
        } catch (Throwable unused) {
            boolValueOf = null;
        }
        return Intrinsics.areEqual(boolValueOf, Boolean.TRUE);
    }

    public static final void deleteChildFiles(File file, Function1<? super File, Boolean> canDelete) {
        Intrinsics.checkNotNullParameter(canDelete, "canDelete");
        if (file == null || !existsSafely(file)) {
            return;
        }
        try {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                Intrinsics.checkNotNullExpressionValue(fileArrListFiles, "listFiles()");
                for (File file2 : fileArrListFiles) {
                    if (file2 != null && canDelete.invoke(file2).booleanValue()) {
                        deleteFile(file2);
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
        } catch (Throwable unused) {
        }
    }

    public static final File getExternalDir(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (FileUtils.canUseExternalFilesDir()) {
            return context.getExternalFilesDir(null);
        }
        return null;
    }
}
