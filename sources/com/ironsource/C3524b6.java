package com.ironsource;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import com.ironsource.Z5;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.b6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3524b6 {
    private final Context a;
    private final C3667j5 b;
    private final HandlerC3463a6 c;
    private final Ub d;
    private final B7 e = Pb.k0().a();

    public C3524b6(Context context, C3667j5 c3667j5, HandlerC3463a6 handlerC3463a6, Ub ub) {
        this.a = context;
        this.b = c3667j5;
        this.c = handlerC3463a6;
        this.d = ub;
    }

    public void a(D8 d8, String str, int i, int i2, Vc vc) throws Exception {
        if (TextUtils.isEmpty(str)) {
            throw new Exception(Z5.a.a);
        }
        if (this.e.a(this.b.a()) <= 0) {
            throw new Exception(C3558d4.A);
        }
        if (!X3.h(this.a)) {
            throw new Exception(C3558d4.C);
        }
        this.c.a(d8.getPath(), new a(vc));
        if (!d8.exists()) {
            this.b.a(d8, str, i, i2, this.c);
            return;
        }
        Message message = new Message();
        message.obj = d8;
        message.what = 1015;
        this.c.sendMessage(message);
    }

    public void b(D8 d8) throws Exception {
        if (d8.exists()) {
            ArrayList<D8> filesInFolderRecursive = IronSourceStorageUtils.getFilesInFolderRecursive(d8);
            if (!IronSourceStorageUtils.deleteFolderContentRecursive(d8) || !d8.delete()) {
                throw new Exception("Failed to delete folder");
            }
            this.d.a(filesInFolderRecursive);
        }
    }

    public JSONObject c(D8 d8) throws Exception {
        if (d8.exists()) {
            return IronSourceStorageUtils.buildFilesMapOfDirectory(d8, this.d.b());
        }
        throw new Exception("Folder does not exist");
    }

    public long d(D8 d8) throws Exception {
        if (d8.exists()) {
            return IronSourceStorageUtils.getTotalSizeOfDir(d8);
        }
        throw new Exception("Folder does not exist");
    }

    /* JADX INFO: renamed from: com.ironsource.b6$a */
    public class a implements Vc {
        final /* synthetic */ Vc a;

        /* JADX INFO: renamed from: com.ironsource.b6$a$a, reason: collision with other inner class name */
        public class C1034a extends JSONObject {
            public C1034a() throws JSONException {
                put("lastReferencedTime", System.currentTimeMillis());
            }
        }

        public a(Vc vc) {
            this.a = vc;
        }

        @Override // com.ironsource.Vc
        public void a(D8 d8) {
            this.a.a(d8);
            try {
                C3524b6.this.d.a(d8.getName(), new C1034a());
            } catch (Exception e) {
                C3813r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }

        @Override // com.ironsource.Vc
        public void a(D8 d8, C3873u8 c3873u8) {
            this.a.a(d8, c3873u8);
        }
    }

    public void a(D8 d8) throws Exception {
        if (d8.exists()) {
            if (d8.delete()) {
                this.d.a(d8.getName());
                return;
            }
            throw new Exception("Failed to delete file");
        }
    }

    public void a(D8 d8, JSONObject jSONObject) throws Exception {
        if (jSONObject != null) {
            if (d8.exists()) {
                if (!this.d.b(d8.getName(), jSONObject)) {
                    throw new Exception("Failed to update attribute");
                }
                return;
            }
            throw new Exception("File does not exist");
        }
        throw new Exception("Missing attributes to update");
    }
}
