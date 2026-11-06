package ads_mobile_sdk;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class gl1 {
    private final tw1 a;
    private final er0 b;
    private volatile du c;
    protected volatile tw1 d;
    private volatile boolean e;

    public gl1(tw1 tw1Var) {
        if (tw1Var != null) {
            this.d = tw1Var;
            this.a = tw1Var.getDefaultInstanceForType();
            this.b = er0.a();
            this.c = null;
            this.e = false;
            return;
        }
        throw new IllegalArgumentException("message cannot be null");
    }

    private void b() throws np1 {
        tw1 tw1VarB;
        if (this.d != null) {
            return;
        }
        synchronized (this) {
            try {
                if (!this.e) {
                    try {
                        my myVarG = this.c.g();
                        myVarG.a(true);
                        if (this.b.c()) {
                            tw1VarB = this.a.getParserForType().a(myVarG, this.b);
                        } else {
                            tw1VarB = this.a.getParserForType().b(myVarG, this.b);
                        }
                        this.d = tw1VarB;
                        myVarG.a(0);
                    } catch (np1 e) {
                        this.e = true;
                        throw e;
                    }
                } else {
                    throw new np1("Repeat access to corrupted lazy field");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public tw1 d() {
        try {
            b();
            return this.d;
        } catch (np1 e) {
            if (!this.b.c()) {
                return this.a;
            }
            throw new mp1(e);
        }
    }

    public int c() {
        return this.c != null ? this.c.size() : this.d.getSerializedSize();
    }

    public int a() {
        return oy.d(c());
    }

    public int hashCode() {
        return d().hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof gl1) {
            gl1 gl1Var = (gl1) obj;
            if (this.c == null || gl1Var.c == null || this.b != gl1Var.b || !this.c.equals(gl1Var.c)) {
                return d().equals(gl1Var.d());
            }
            return true;
        }
        return d().equals(obj);
    }

    public String toString() {
        return d().toString();
    }

    public static class a<K> implements Map.Entry<K, Object> {
        private final Map.Entry<K, gl1> a;

        private a(Map.Entry<K, gl1> entry) {
            this.a = entry;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.a.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            gl1 value = this.a.getValue();
            if (value == null) {
                return null;
            }
            return value.d();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof tw1) {
                tw1 tw1Var = this.a.getValue().d;
                this.a.setValue(new gl1((tw1) obj));
                return tw1Var;
            }
            throw new IllegalArgumentException("Lazy field only supports MessageLite values.");
        }
    }

    public static class b<K> implements Iterator<Map.Entry<K, Object>> {
        private Iterator<Map.Entry<K, Object>> a;

        public b(Iterator<Map.Entry<K, Object>> it) {
            this.a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.a.next();
            return next.getValue() instanceof gl1 ? new a(next) : next;
        }

        @Override // java.util.Iterator
        public void remove() {
            this.a.remove();
        }
    }
}
