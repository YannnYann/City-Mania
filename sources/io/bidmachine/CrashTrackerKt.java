package io.bidmachine;

import android.content.Context;
import java.io.File;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class CrashTrackerKt {
    private static final String CRASH_DEFAULT_EXTENDED_MESSAGE = "Unknown";
    private static final String CRASH_DEFAULT_MESSAGE = "Exception";
    private static final String CRASH_DIR_NAME = "bidmachine/crashes";
    private static final String CRASH_FILE_KEY_EXTENDED_MESSAGE = "extendedMessage";
    private static final String CRASH_FILE_KEY_FINISH_MS = "finishMs";
    private static final String CRASH_FILE_KEY_MESSAGE = "message";
    private static final String CRASH_FILE_KEY_START_MS = "startMs";
    private static final char CRASH_FILE_PARAMETER_DELIMITER = '=';

    public static final class a extends Lambda implements Function1 {
        public static final a a = new a();

        public a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair invoke(String line) {
            Intrinsics.checkNotNullParameter(line, "line");
            int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) line, '=', 0, false, 6, (Object) null);
            if (iIndexOf$default < 0) {
                return null;
            }
            String strSubstring = line.substring(0, iIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String strSubstring2 = line.substring(iIndexOf$default + 1);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
            return TuplesKt.to(strSubstring, strSubstring2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final File crashDir(Context context) {
        return new File(context.getFilesDir(), CRASH_DIR_NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final File[] crashFiles(Context context) {
        File[] fileArrListFiles = crashDir(context).listFiles();
        return fileArrListFiles == null ? new File[0] : fileArrListFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map<String, String> parseCrash(String str) {
        return MapsKt__MapsKt.toMap(SequencesKt___SequencesKt.mapNotNull(StringsKt__StringsKt.lineSequence(str), a.a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void saveCrashToFile(java.lang.Throwable r8, android.content.Context r9) {
        /*
            java.io.File r9 = r9.getFilesDir()
            java.lang.String r0 = "bidmachine/crashes"
            java.io.File r9 = io.bidmachine.util.file.FileUtilsKt.createSubDir(r9, r0)
            if (r9 != 0) goto Ld
            return
        Ld:
            io.bidmachine.SessionManager r0 = io.bidmachine.SessionManager.get()
            long r0 = r0.getSessionStartTime()
            long r2 = java.lang.System.currentTimeMillis()
            java.lang.String r4 = toErrorMessage(r8)
            r5 = 0
            if (r4 == 0) goto L2a
            boolean r6 = kotlin.text.StringsKt__StringsKt.isBlank(r4)
            if (r6 != 0) goto L27
            goto L28
        L27:
            r4 = r5
        L28:
            if (r4 != 0) goto L2c
        L2a:
            java.lang.String r4 = "Exception"
        L2c:
            java.lang.Throwable r8 = r8.getCause()
            if (r8 == 0) goto L42
            java.lang.String r8 = toErrorMessage(r8)
            if (r8 == 0) goto L42
            boolean r6 = kotlin.text.StringsKt__StringsKt.isBlank(r8)
            if (r6 != 0) goto L3f
            goto L40
        L3f:
            r8 = r5
        L40:
            if (r8 != 0) goto L44
        L42:
            java.lang.String r8 = "Unknown"
        L44:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "startMs="
            r6.append(r7)
            r6.append(r0)
            java.lang.String r0 = "\nfinishMs="
            r6.append(r0)
            r6.append(r2)
            java.lang.String r0 = "\nmessage="
            r6.append(r0)
            r6.append(r4)
            java.lang.String r0 = "\nextendedMessage="
            r6.append(r0)
            r6.append(r8)
            r8 = 10
            r6.append(r8)
            java.lang.String r8 = r6.toString()
            java.io.FileOutputStream r0 = new java.io.FileOutputStream
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r4 = "crash_"
            r1.append(r4)
            r1.append(r2)
            java.lang.String r2 = ".txt"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.io.File r9 = io.bidmachine.util.file.FileUtilsKt.createFile(r9, r1)
            r0.<init>(r9)
            java.nio.charset.Charset r9 = kotlin.text.Charsets.UTF_8     // Catch: java.lang.Throwable -> La5
            byte[] r8 = r8.getBytes(r9)     // Catch: java.lang.Throwable -> La5
            java.lang.String r9 = "this as java.lang.String).getBytes(charset)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r9)     // Catch: java.lang.Throwable -> La5
            r0.write(r8)     // Catch: java.lang.Throwable -> La5
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> La5
            kotlin.io.CloseableKt.closeFinally(r0, r5)
            return
        La5:
            r8 = move-exception
            throw r8     // Catch: java.lang.Throwable -> La7
        La7:
            r9 = move-exception
            kotlin.io.CloseableKt.closeFinally(r0, r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.CrashTrackerKt.saveCrashToFile(java.lang.Throwable, android.content.Context):void");
    }

    private static final String toErrorMessage(Throwable th) {
        if (th == null) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(th.getClass().getName());
            String message = th.getMessage();
            if (message != null && message.length() != 0) {
                sb.append(": ");
                sb.append(th.getMessage());
            }
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        } catch (Throwable unused) {
            return null;
        }
    }
}
