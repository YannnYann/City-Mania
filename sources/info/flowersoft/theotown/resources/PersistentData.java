package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class PersistentData {
    public String name;

    public PersistentData(String str) {
        this.name = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024 A[Catch: all -> 0x001c, TRY_LEAVE, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x0015, B:12:0x0024, B:10:0x001f), top: B:19:0x0001, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized info.flowersoft.theotown.util.json.JSONObject read() {
        /*
            r3 = this;
            monitor-enter(r3)
            info.flowersoft.theotown.util.SSP r0 = new info.flowersoft.theotown.util.SSP     // Catch: java.lang.Throwable -> L1c
            java.lang.String r1 = r3.name     // Catch: java.lang.Throwable -> L1c
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L1c
            info.flowersoft.theotown.util.SSP$Reader r0 = r0.load()     // Catch: java.lang.Throwable -> L1c
            java.lang.String r1 = r3.name     // Catch: java.lang.Throwable -> L1c
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L22
            info.flowersoft.theotown.util.json.JSONObject r1 = new info.flowersoft.theotown.util.json.JSONObject     // Catch: java.lang.Throwable -> L1c info.flowersoft.theotown.util.json.JSONException -> L1e
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L1c info.flowersoft.theotown.util.json.JSONException -> L1e
            r2 = r1
            goto L22
        L1c:
            r0 = move-exception
            goto L2b
        L1e:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L1c
        L22:
            if (r2 != 0) goto L29
            info.flowersoft.theotown.util.json.JSONObject r2 = new info.flowersoft.theotown.util.json.JSONObject     // Catch: java.lang.Throwable -> L1c
            r2.<init>()     // Catch: java.lang.Throwable -> L1c
        L29:
            monitor-exit(r3)
            return r2
        L2b:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L1c
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.resources.PersistentData.read():info.flowersoft.theotown.util.json.JSONObject");
    }

    public synchronized void write(JSONObject jSONObject) {
        SSP.Writer writerEdit = new SSP(this.name).edit();
        writerEdit.putString(this.name, jSONObject.toString());
        writerEdit.apply();
    }
}
