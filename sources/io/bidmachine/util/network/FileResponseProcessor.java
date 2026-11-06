package io.bidmachine.util.network;

import android.content.Context;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.file.FileUtilsKt;
import java.io.File;
import java.io.InputStream;
import java.net.URLConnection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FileResponseProcessor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class FileResponseProcessor implements ResponseProcessor<File> {
    public final Context applicationContext;
    public final File file;
    public final File tempDir;

    public FileResponseProcessor(Context context, File file, File file2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(file, "file");
        this.file = file;
        this.tempDir = file2;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.applicationContext = applicationContext;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.util.network.ResponseProcessor
    public File process(URLConnection urlConnection) throws Throwable {
        Intrinsics.checkNotNullParameter(urlConnection, "urlConnection");
        File cacheDir = this.tempDir;
        if (cacheDir == null) {
            cacheDir = this.applicationContext.getCacheDir();
        }
        if (cacheDir == null) {
            throw new IllegalStateException("Can't create temp file, temp dir is null");
        }
        cacheDir.mkdirs();
        if (!cacheDir.exists()) {
            throw new IllegalStateException(("Can't create temp dir " + cacheDir.getPath()).toString());
        }
        File fileCreateTempFile$default = FileUtilsKt.createTempFile$default(cacheDir, null, 1, null);
        long contentLength = urlConnection.getContentLength();
        try {
            InputStream inputStream = urlConnection.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "urlConnection.getInputStream()");
            if (UtilsKt.readIntoFile(inputStream, fileCreateTempFile$default) != contentLength) {
                throw new IllegalStateException("The downloaded file size does not match the stated size");
            }
            File parentFile = this.file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            File parentFile2 = this.file.getParentFile();
            if (parentFile2 == null || !parentFile2.exists()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Can't create target file dir ");
                File parentFile3 = this.file.getParentFile();
                sb.append(parentFile3 != null ? parentFile3.getPath() : null);
                throw new IllegalStateException(sb.toString().toString());
            }
            if (!fileCreateTempFile$default.renameTo(this.file) && !FileUtilsKt.hasContent(this.file)) {
                throw new IllegalStateException("Can't rename temp file");
            }
            return this.file;
        } catch (Throwable th) {
            FileUtilsKt.deleteFile(fileCreateTempFile$default);
            throw th;
        }
    }
}
