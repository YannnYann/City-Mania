package io.bidmachine.media3.common;

import android.net.Uri;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class FileTypes {
    public static int inferFileTypeFromResponseHeaders(Map<String, List<String>> map) {
        List<String> list = map.get("Content-Type");
        return inferFileTypeFromMimeType((list == null || list.isEmpty()) ? null : list.get(0));
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01a4, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01b3, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01c2, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01cf, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01dd, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01eb, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01f9, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0206, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004f, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0214, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005f, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006f, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007f, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008f, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009f, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00af, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bf, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cf, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00df, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ef, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ff, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x010e, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x011d, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012c, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x013b, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x014a, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0039, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0159, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0168, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0177, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003f, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0186, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0195, code lost:
    
        r23 = 20;
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x021e A[PHI: r23
      0x021e: PHI (r23v32 int) = 
      (r23v1 int)
      (r23v2 int)
      (r23v3 int)
      (r23v4 int)
      (r23v5 int)
      (r23v6 int)
      (r23v7 int)
      (r23v8 int)
      (r23v9 int)
      (r23v10 int)
      (r23v11 int)
      (r23v12 int)
      (r23v13 int)
      (r23v14 int)
      (r23v15 int)
      (r23v16 int)
      (r23v17 int)
      (r23v18 int)
      (r23v19 int)
      (r23v20 int)
      (r23v21 int)
      (r23v22 int)
      (r23v23 int)
      (r23v24 int)
      (r23v25 int)
      (r23v26 int)
      (r23v27 int)
      (r23v28 int)
      (r23v29 int)
      (r23v30 int)
      (r23v31 int)
      (r23v33 int)
     binds: [B:133:0x021c, B:129:0x020e, B:125:0x0201, B:121:0x01f3, B:117:0x01e5, B:113:0x01d7, B:109:0x01ca, B:105:0x01bb, B:101:0x01ac, B:97:0x019d, B:93:0x018e, B:89:0x017f, B:85:0x0170, B:81:0x0161, B:77:0x0152, B:73:0x0143, B:69:0x0134, B:65:0x0125, B:61:0x0116, B:57:0x0107, B:53:0x00f7, B:49:0x00e7, B:45:0x00d7, B:41:0x00c7, B:37:0x00b7, B:33:0x00a7, B:29:0x0097, B:25:0x0087, B:21:0x0077, B:17:0x0067, B:13:0x0057, B:9:0x0047] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int inferFileTypeFromMimeType(java.lang.String r24) {
        /*
            Method dump skipped, instruction units count: 770
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.common.FileTypes.inferFileTypeFromMimeType(java.lang.String):int");
    }

    public static int inferFileTypeFromUri(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1;
        }
        if (lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
            return 0;
        }
        if (lastPathSegment.endsWith(".ac4")) {
            return 1;
        }
        if (lastPathSegment.endsWith(".adts") || lastPathSegment.endsWith(".aac")) {
            return 2;
        }
        if (lastPathSegment.endsWith(".amr")) {
            return 3;
        }
        if (lastPathSegment.endsWith(".flac")) {
            return 4;
        }
        if (lastPathSegment.endsWith(".flv")) {
            return 5;
        }
        if (lastPathSegment.endsWith(".mid") || lastPathSegment.endsWith(".midi") || lastPathSegment.endsWith(".smf")) {
            return 15;
        }
        if (lastPathSegment.startsWith(".mk", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".webm")) {
            return 6;
        }
        if (lastPathSegment.endsWith(".mp3")) {
            return 7;
        }
        if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
            return 8;
        }
        if (lastPathSegment.startsWith(".og", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".opus")) {
            return 9;
        }
        if (lastPathSegment.endsWith(".ps") || lastPathSegment.endsWith(".mpeg") || lastPathSegment.endsWith(".mpg") || lastPathSegment.endsWith(".m2p")) {
            return 10;
        }
        if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
            return 11;
        }
        if (lastPathSegment.endsWith(".wav") || lastPathSegment.endsWith(".wave")) {
            return 12;
        }
        if (lastPathSegment.endsWith(".vtt") || lastPathSegment.endsWith(".webvtt")) {
            return 13;
        }
        if (lastPathSegment.endsWith(".jpg") || lastPathSegment.endsWith(".jpeg")) {
            return 14;
        }
        if (lastPathSegment.endsWith(".avi")) {
            return 16;
        }
        if (lastPathSegment.endsWith(".png")) {
            return 17;
        }
        if (lastPathSegment.endsWith(".webp")) {
            return 18;
        }
        if (lastPathSegment.endsWith(".bmp") || lastPathSegment.endsWith(".dib")) {
            return 19;
        }
        if (lastPathSegment.endsWith(".heic") || lastPathSegment.endsWith(".heif")) {
            return 20;
        }
        return lastPathSegment.endsWith(".avif") ? 21 : -1;
    }
}
