package io.bidmachine;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.unity3d.ads.core.data.datasource.AndroidTcfDataSource;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.util.SharedPreferenceUtilsKt;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class s implements InterfaceC4237r {
    public final SharedPreferences.OnSharedPreferenceChangeListener b = new a();
    public Boolean c;
    public Boolean d;
    public String e;
    public String f;
    public String g;
    public String h;
    public List i;

    public class a implements SharedPreferences.OnSharedPreferenceChangeListener {
        public a() {
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            s.this.a(sharedPreferences, str);
        }
    }

    public final void b(SharedPreferences sharedPreferences) {
        String strOptStringOrNull = SharedPreferenceUtilsKt.optStringOrNull(sharedPreferences, "IABConsent_SubjectToGDPR", null);
        this.c = strOptStringOrNull != null ? Boolean.valueOf(strOptStringOrNull.equals("1")) : null;
    }

    public final void c(SharedPreferences sharedPreferences) {
        String strOptStringOrNull = SharedPreferenceUtilsKt.optStringOrNull(sharedPreferences, "IABGPP_GppSID", null);
        if (TextUtils.isEmpty(strOptStringOrNull)) {
            this.i = null;
            return;
        }
        try {
            String[] strArrSplit = strOptStringOrNull.split("_");
            if (strArrSplit.length == 0) {
                this.i = null;
                return;
            }
            this.i = new ArrayList();
            for (String str : strArrSplit) {
                Integer intOrDefault = Utils.parseIntOrDefault(str, (Integer) null);
                if (intOrDefault != null) {
                    this.i.add(intOrDefault);
                }
            }
        } catch (Throwable th) {
            Logger.w(th);
            this.i = null;
        }
    }

    public final void d(SharedPreferences sharedPreferences) {
        this.h = SharedPreferenceUtilsKt.optStringOrNull(sharedPreferences, "IABGPP_HDR_GppString", null);
    }

    public final void e(SharedPreferences sharedPreferences) {
        int iOptInt = SharedPreferenceUtilsKt.optInt(sharedPreferences, "IABTCF_gdprApplies", -1);
        if (iOptInt == 1) {
            this.d = Boolean.TRUE;
        } else if (iOptInt == 0) {
            this.d = Boolean.FALSE;
        } else {
            this.d = null;
        }
    }

    public final void f(SharedPreferences sharedPreferences) {
        this.f = SharedPreferenceUtilsKt.optStringOrNull(sharedPreferences, AndroidTcfDataSource.TCF_TCSTRING_KEY, null);
    }

    public final void g(SharedPreferences sharedPreferences) {
        this.g = SharedPreferenceUtilsKt.optStringOrNull(sharedPreferences, "IABUSPrivacy_String", null);
    }

    @Override // io.bidmachine.InterfaceC4237r
    public void a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this.b);
        for (String str : InterfaceC4237r.a) {
            a(defaultSharedPreferences, str);
        }
    }

    public final void a(SharedPreferences sharedPreferences, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.getClass();
        switch (str) {
            case "IABTCF_gdprApplies":
                e(sharedPreferences);
                break;
            case "IABGPP_GppSID":
                c(sharedPreferences);
                break;
            case "IABUSPrivacy_String":
                g(sharedPreferences);
                break;
            case "IABConsent_ConsentString":
                a(sharedPreferences);
                break;
            case "IABTCF_TCString":
                f(sharedPreferences);
                break;
            case "IABConsent_SubjectToGDPR":
                b(sharedPreferences);
                break;
            case "IABGPP_HDR_GppString":
                d(sharedPreferences);
                break;
        }
    }

    public final void a(SharedPreferences sharedPreferences) {
        this.e = SharedPreferenceUtilsKt.optStringOrNull(sharedPreferences, "IABConsent_ConsentString", null);
    }
}
