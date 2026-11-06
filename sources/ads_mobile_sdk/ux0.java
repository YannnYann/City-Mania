package ads_mobile_sdk;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class ux0 {
    public static final Pattern b = Pattern.compile("^[a-zA-Z0-9 ]+$");
    public final ArrayList a = new ArrayList();

    public final void a(View view, tx0 tx0Var, String str) {
        sx0 sx0Var;
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
        if (str != null) {
            if (str.length() > 50) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason over 50 characters in length");
            }
            if (!b.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
            }
        }
        Iterator it = this.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                sx0Var = null;
                break;
            } else {
                sx0Var = (sx0) it.next();
                if (sx0Var.a.get() == view) {
                    break;
                }
            }
        }
        if (sx0Var == null) {
            this.a.add(new sx0(view, tx0Var, str));
        }
    }
}
