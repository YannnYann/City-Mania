package ads_mobile_sdk;

import android.view.View;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class fd {
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final HashSet d = new HashSet();
    public final HashSet e = new HashSet();
    public final HashSet f = new HashSet();
    public final HashMap g = new HashMap();
    public final HashSet h = new HashSet();
    public final WeakHashMap i = new WeakHashMap();
    public boolean j;

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        Boolean bool;
        String str;
        q9 q9Var = q9.c;
        if (q9Var != null) {
            for (p9 p9Var : Collections.unmodifiableCollection(q9Var.b)) {
                View view = (View) p9Var.c.get();
                if (p9Var.e && !p9Var.f) {
                    String str2 = p9Var.g;
                    if (view != null) {
                        boolean zC = jg2.c(view);
                        if (zC) {
                            this.h.add(str2);
                        }
                        if (view.isAttachedToWindow()) {
                            if (view.hasWindowFocus()) {
                                this.i.remove(view);
                                bool = Boolean.FALSE;
                            } else if (this.i.containsKey(view)) {
                                bool = (Boolean) this.i.get(view);
                            } else {
                                WeakHashMap weakHashMap = this.i;
                                Boolean bool2 = Boolean.FALSE;
                                weakHashMap.put(view, bool2);
                                bool = bool2;
                            }
                            if (!bool.booleanValue() || zC) {
                                HashSet hashSet = new HashSet();
                                View view2 = view;
                                while (true) {
                                    if (view2 == null) {
                                        this.d.addAll(hashSet);
                                        str = null;
                                        break;
                                    }
                                    String strA = jg2.a(view2);
                                    if (strA != null) {
                                        str = strA;
                                        break;
                                    } else {
                                        hashSet.add(view2);
                                        Object parent = view2.getParent();
                                        view2 = parent instanceof View ? (View) parent : null;
                                    }
                                }
                            } else {
                                str = "noWindowFocus";
                            }
                        } else {
                            str = "notAttached";
                        }
                        if (str == null) {
                            this.e.add(str2);
                            this.a.put(view, str2);
                            for (sx0 sx0Var : p9Var.b.a) {
                                View view3 = (View) sx0Var.a.get();
                                if (view3 != null) {
                                    ed edVar = (ed) this.b.get(view3);
                                    if (edVar != null) {
                                        edVar.b.add(p9Var.g);
                                    } else {
                                        this.b.put(view3, new ed(sx0Var, p9Var.g));
                                    }
                                }
                            }
                        } else if (str != "noWindowFocus") {
                            this.f.add(str2);
                            this.c.put(str2, view);
                            this.g.put(str2, str);
                        }
                    } else {
                        this.f.add(str2);
                        this.g.put(str2, "noAdView");
                    }
                }
            }
        }
    }
}
