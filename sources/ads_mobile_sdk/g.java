package ads_mobile_sdk;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends nd2 {
    public final HashSet c;
    public final JSONObject d;
    public final long e;

    public g(gl3 gl3Var, HashSet hashSet, JSONObject jSONObject, long j) {
        super(gl3Var);
        this.c = new HashSet(hashSet);
        this.d = jSONObject;
        this.e = j;
    }
}
