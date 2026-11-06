package com.ironsource.sdk.controller;

import com.ironsource.C3524b6;
import com.ironsource.C3813r4;
import com.ironsource.C3873u8;
import com.ironsource.C3893va;
import com.ironsource.C3911wa;
import com.ironsource.D8;
import com.ironsource.Vc;
import com.ironsource.Z5;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class j {
    private final String a;
    private final C3524b6 b;

    public j(String str, C3524b6 c3524b6) {
        this.a = str;
        this.b = c3524b6;
    }

    private D8 b(JSONObject jSONObject, String str) throws Exception {
        if (!jSONObject.has(Z5.c.c) || !jSONObject.has(Z5.c.b)) {
            throw new Exception(Z5.a.a);
        }
        String string = jSONObject.getString(Z5.c.c);
        return new D8(IronSourceStorageUtils.buildAbsolutePathToDirInCache(str, string), jSONObject.getString(Z5.c.b));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(org.json.JSONObject r10, com.ironsource.InterfaceC3875ua r11) {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.controller.j.a(org.json.JSONObject, com.ironsource.ua):void");
    }

    public class a implements Vc {
        final /* synthetic */ C3911wa a;
        final /* synthetic */ C3893va b;

        public a(C3911wa c3911wa, C3893va c3893va) {
            this.a = c3911wa;
            this.b = c3893va;
        }

        @Override // com.ironsource.Vc
        public void a(D8 d8) {
            try {
                C3911wa c3911wa = this.a;
                C3893va c3893va = this.b;
                c3911wa.b(c3893va, j.this.a(c3893va, d8.a()));
            } catch (Exception e) {
                C3813r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }

        @Override // com.ironsource.Vc
        public void a(D8 d8, C3873u8 c3873u8) {
            try {
                C3911wa c3911wa = this.a;
                C3893va c3893va = this.b;
                c3911wa.a(c3893va, j.this.a(c3893va, c3873u8.b()));
            } catch (Exception e) {
                C3813r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }
    }

    private Vc a(C3893va c3893va, C3911wa c3911wa) {
        return new a(c3911wa, c3893va);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject a(C3893va c3893va, JSONObject jSONObject) {
        try {
            return c3893va.e().put("result", jSONObject);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return new JSONObject();
        }
    }

    private JSONObject a(C3893va c3893va, long j) {
        try {
            return c3893va.e().put("result", j);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject a(C3893va c3893va, String str) {
        try {
            return c3893va.e().put("errMsg", str);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return new JSONObject();
        }
    }

    private D8 a(JSONObject jSONObject, String str) throws Exception {
        if (jSONObject.has(Z5.c.d)) {
            return new D8(IronSourceStorageUtils.buildAbsolutePathToDirInCache(str, jSONObject.getString(Z5.c.d)));
        }
        throw new Exception(Z5.a.b);
    }
}
