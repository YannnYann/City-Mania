package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.BackendConnector;
import info.flowersoft.theotown.backend.ResponseHandler;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.LegacySignatureVerifier;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class StaticFiles {
    public static StaticFiles instance;
    public JSONObject keys;
    public Thread worker;

    public final void successfullyDownloaded(File file) {
    }

    public void init(JSONObject jSONObject) {
        if (this.worker != null) {
            throw new IllegalStateException("Tried to re-init static files");
        }
        this.keys = jSONObject;
        if (Settings.downloadStaticFiles) {
            final long jMillis = TimeUtils.millis();
            Thread thread = new Thread(new Runnable() { // from class: info.flowersoft.theotown.resources.StaticFiles$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StaticFiles.$r8$lambda$OsyMLfD8rVHx9dFr_4iFEeKr6vg(this.f$0, jMillis);
                }
            });
            this.worker = thread;
            thread.start();
        }
    }

    public static /* synthetic */ void $r8$lambda$OsyMLfD8rVHx9dFr_4iFEeKr6vg(StaticFiles staticFiles, final long j) {
        staticFiles.getClass();
        Backend.getInstance().getConnector().sendRequest("static_files/static_files.php", BackendConnector.EMPTY_REQUEST, BackendConnector.COLLECT_TEXT, new ResponseHandler<String>() { // from class: info.flowersoft.theotown.resources.StaticFiles.1
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(String str) {
                Gdx.app.debug("StaticFiles", "Got file list after " + (TimeUtils.millis() - j) + "ms");
                try {
                    JSONObject jSONObject = new JSONObject(str).getJSONObject(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT);
                    if (jSONObject.getString("status").equals("success")) {
                        StaticFiles.this.onReceive(jSONObject);
                        Gdx.app.debug("StaticFiles", "Finished after " + (TimeUtils.millis() - j) + "ms");
                    }
                } catch (JSONException e) {
                    TheoTown.analytics.logException("Handle", e);
                }
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                TheoTown.analytics.logException("General", exc);
            }
        });
    }

    public final void onReceive(JSONObject jSONObject) {
        int i;
        File file;
        File theoTownDir = Resources.getTheoTownDir();
        if (!theoTownDir.exists()) {
            TheoTown.analytics.logException("Main dir", new IllegalStateException("TheoTown dir doesn't exist: " + theoTownDir.getAbsolutePath()));
            Gdx.app.debug("StaticFiles", "TheoTown dir doesn't exist: " + theoTownDir.getAbsolutePath());
            return;
        }
        try {
            long usableSpace = (theoTownDir.getUsableSpace() / 1024) / 1024;
            TheoTown.analytics.logEvent("StaticFiles", "Left space", "" + usableSpace);
            if (usableSpace < 100) {
                TheoTown.analytics.logException("Left MB", new IllegalStateException("Not enough space left for static files: " + usableSpace + "mb"));
                Gdx.app.error("StaticFiles", "Not enough space left for static files: " + usableSpace + "mb");
                return;
            }
        } catch (Exception e) {
            TheoTown.analytics.logException("General", e);
            TheoTown.analytics.logEvent("StaticFiles", "Left space", e.getMessage());
        }
        StringBuilder sb = new StringBuilder();
        String str = "files";
        sb.append("files");
        sb.append(2);
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        String str2 = "sign";
        sb2.append("sign");
        sb2.append(2);
        String string2 = sb2.toString();
        if (jSONObject.has(string) && jSONObject.has(string2)) {
            str = string;
            str2 = string2;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        String strOptString = jSONObject.optString(str2);
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() > 200 || strOptString == null || strOptString.isEmpty()) {
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        int i2 = 0;
        for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
            sb3.append(jSONArrayOptJSONArray.optJSONObject(i3).optString("path"));
            sb3.append('#');
            sb3.append(jSONArrayOptJSONArray.optJSONObject(i3).optString("name"));
            sb3.append('#');
            sb3.append(jSONArrayOptJSONArray.optJSONObject(i3).optInt("size"));
            sb3.append('#');
            sb3.append(jSONArrayOptJSONArray.optJSONObject(i3).optString("md5"));
            sb3.append('#');
        }
        String strMd5 = Hashing.md5(sb3.toString());
        if (!new LegacySignatureVerifier(Base64Coder.decode(this.keys.optString("static files private key2"))).verifySign(Hex.hex2bin(strMd5), Base64Coder.decode(strOptString))) {
            TheoTown.analytics.logException("Verify", new IllegalArgumentException("Wrong signature in static file list, hash:" + strMd5 + ", sign:" + strOptString));
            Gdx.app.debug("StaticFiles", "Wrong signature in static file list, hash:" + strMd5 + ", sign:" + strOptString);
            return;
        }
        int i4 = 0;
        while (i2 < jSONArrayOptJSONArray.length()) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
            String strOptString2 = jSONObjectOptJSONObject.optString("name");
            String strOptString3 = jSONObjectOptJSONObject.optString("path");
            int iOptInt = jSONObjectOptJSONObject.optInt("size");
            jSONObjectOptJSONObject.optString("md5");
            if (!strOptString2.contains("..") && !strOptString2.startsWith("/")) {
                File file2 = new File(theoTownDir, strOptString2);
                File parentFile = file2.getParentFile();
                File file3 = new File(parentFile, ".nofilecreation");
                if (file2.exists()) {
                    i = i2;
                    file = theoTownDir;
                    if (file2.length() != iOptInt) {
                    }
                    i2 = i + 1;
                    theoTownDir = file;
                } else {
                    i = i2;
                    file = theoTownDir;
                }
                if (!file3.exists()) {
                    i4++;
                    if ((!file2.exists() || file2.delete()) && (parentFile.exists() || parentFile.mkdirs())) {
                        File tempFile = Resources.getTempFile();
                        if (tempFile != null && download(tempFile, strOptString3) && tempFile.exists() && tempFile.length() == iOptInt) {
                            if (!tempFile.renameTo(file2)) {
                                Files.copyFile(tempFile, file2);
                                tempFile.delete();
                            }
                            successfullyDownloaded(file2);
                        } else {
                            if (tempFile != null && tempFile.exists()) {
                                tempFile.delete();
                            }
                            Gdx.app.debug("StaticFiles", "failed to get " + file2.getName());
                        }
                    }
                }
                i2 = i + 1;
                theoTownDir = file;
            } else {
                TheoTown.analytics.logException("File name", new IllegalArgumentException("File name " + strOptString2 + " is not allowed"));
                return;
            }
        }
        if (i4 == 0) {
            Gdx.app.debug("StaticFiles", "All files are up to date");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean download(java.io.File r7, java.lang.String r8) throws java.lang.Throwable {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            java.net.URL r2 = new java.net.URL     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L77
            r2.<init>(r8)     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L77
            java.net.URLConnection r8 = r2.openConnection()     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L77
            java.net.HttpURLConnection r8 = (java.net.HttpURLConnection) r8     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L77
            info.flowersoft.theotown.backend.BackendConnector.applyHeaders(r8)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            r8.connect()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            int r2 = r8.getResponseCode()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            r3 = 200(0xc8, float:2.8E-43)
            if (r2 == r3) goto L40
            com.badlogic.gdx.Application r7 = com.badlogic.gdx.Gdx.app     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            java.lang.String r2 = "StaticFiles"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            r3.<init>()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            java.lang.String r4 = "Error: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            java.lang.String r4 = r8.getResponseMessage()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            r3.append(r4)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            r7.debug(r2, r3)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            r8.disconnect()
            return r0
        L3b:
            r7 = move-exception
            r2 = r1
            goto L7a
        L3e:
            r2 = r1
            goto L8a
        L40:
            r8.getContentLength()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            java.io.InputStream r2 = r8.getInputStream()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L8a
            r3.<init>(r7)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L8a
            byte[] r7 = io.blueflower.stapel2d.util.StreamCopyUtil.getBuffer()     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            r1 = r0
        L51:
            int r4 = r2.read(r7)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            r5 = -1
            if (r4 == r5) goto L66
            r5 = 20971520(0x1400000, float:3.526483E-38)
            if (r1 >= r5) goto L66
            int r1 = r1 + r4
            r3.write(r7, r0, r4)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            goto L51
        L61:
            r7 = move-exception
            r1 = r3
            goto L7a
        L64:
            r1 = r3
            goto L8a
        L66:
            r3.close()     // Catch: java.io.IOException -> L6c
            r2.close()     // Catch: java.io.IOException -> L6c
        L6c:
            r8.disconnect()
            r7 = 1
            return r7
        L71:
            r7 = move-exception
            goto L7a
        L73:
            r7 = move-exception
            r8 = r1
            r2 = r8
            goto L7a
        L77:
            r8 = r1
            r2 = r8
            goto L8a
        L7a:
            if (r1 == 0) goto L7f
            r1.close()     // Catch: java.io.IOException -> L84
        L7f:
            if (r2 == 0) goto L84
            r2.close()     // Catch: java.io.IOException -> L84
        L84:
            if (r8 == 0) goto L89
            r8.disconnect()
        L89:
            throw r7
        L8a:
            if (r1 == 0) goto L8f
            r1.close()     // Catch: java.io.IOException -> L94
        L8f:
            if (r2 == 0) goto L94
            r2.close()     // Catch: java.io.IOException -> L94
        L94:
            if (r8 == 0) goto L99
            r8.disconnect()
        L99:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.resources.StaticFiles.download(java.io.File, java.lang.String):boolean");
    }

    public static StaticFiles getInstance() {
        if (instance == null) {
            instance = new StaticFiles();
        }
        return instance;
    }

    public static void dispose() {
        instance = null;
    }
}
