package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.ironsourceads.AdSize;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.n1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3735n1 {
    public static final C3735n1 a = new C3735n1();

    /* JADX INFO: renamed from: com.ironsource.n1$a */
    public static final class a implements InterfaceC3753o1 {
        private final IronSource.a a;

        public a(IronSource.a value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.a = value;
        }

        private final IronSource.a a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.a == ((a) obj).a;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "AdFormatEntity(value=" + this.a + ")";
        }

        public final a a(IronSource.a value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new a(value);
        }

        public static /* synthetic */ a a(a aVar, IronSource.a aVar2, int i, Object obj) {
            if ((i & 1) != 0) {
                aVar2 = aVar.a;
            }
            return aVar.a(aVar2);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put("adUnit", Integer.valueOf(If.c(this.a)));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$b */
    public static final class b implements InterfaceC3753o1 {
        private final String a;

        public b(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.a = value;
        }

        private final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.areEqual(this.a, ((b) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "AdIdentifier(value=" + this.a + ")";
        }

        public final b a(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new b(value);
        }

        public static /* synthetic */ b a(b bVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = bVar.a;
            }
            return bVar.a(str);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put(IronSourceConstants.EVENTS_IRONSOURCE_AD_OBJECT_ID, this.a);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$c */
    public static final class c implements InterfaceC3753o1 {
        private final AdSize a;

        public c(AdSize size) {
            Intrinsics.checkNotNullParameter(size, "size");
            this.a = size;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x004d  */
        @Override // com.ironsource.InterfaceC3753o1
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(java.util.Map<java.lang.String, java.lang.Object> r4) {
            /*
                r3 = this;
                java.lang.String r0 = "bundle"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                com.unity3d.ironsourceads.AdSize r0 = r3.a
                java.lang.String r0 = r0.getSizeDescription()
                int r1 = r0.hashCode()
                r2 = -96588539(0xfffffffffa3e2d05, float:-2.4686238E35)
                if (r1 == r2) goto L45
                r2 = 72205083(0x44dc31b, float:2.4187222E-36)
                if (r1 == r2) goto L3a
                r2 = 446888797(0x1aa2fb5d, float:6.740773E-23)
                if (r1 == r2) goto L2f
                r2 = 1951953708(0x7458732c, float:6.859571E31)
                if (r1 == r2) goto L24
                goto L4d
            L24:
                java.lang.String r1 = "BANNER"
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L2d
                goto L4d
            L2d:
                r0 = 1
                goto L50
            L2f:
                java.lang.String r1 = "LEADERBOARD"
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L38
                goto L4d
            L38:
                r0 = 4
                goto L50
            L3a:
                java.lang.String r1 = "LARGE"
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L43
                goto L4d
            L43:
                r0 = 2
                goto L50
            L45:
                java.lang.String r1 = "MEDIUM_RECTANGLE"
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L4f
            L4d:
                r0 = 0
                goto L50
            L4f:
                r0 = 3
            L50:
                java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
                java.lang.String r1 = "bannerAdSize"
                r4.put(r1, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.C3735n1.c.a(java.util.Map):void");
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$d */
    public static final class d implements InterfaceC3753o1 {
        private final String a;

        public d(String auctionId) {
            Intrinsics.checkNotNullParameter(auctionId, "auctionId");
            this.a = auctionId;
        }

        private final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && Intrinsics.areEqual(this.a, ((d) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "AuctionId(auctionId=" + this.a + ")";
        }

        public final d a(String auctionId) {
            Intrinsics.checkNotNullParameter(auctionId, "auctionId");
            return new d(auctionId);
        }

        public static /* synthetic */ d a(d dVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = dVar.a;
            }
            return dVar.a(str);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put("auctionId", this.a);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$e */
    public static final class e implements InterfaceC3753o1 {
        private final int a;

        public e(int i) {
            this.a = i;
        }

        private final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && this.a == ((e) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "DemandOnly(value=" + this.a + ")";
        }

        public final e a(int i) {
            return new e(i);
        }

        public static /* synthetic */ e a(e eVar, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = eVar.a;
            }
            return eVar.a(i);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put(IronSourceConstants.EVENTS_DEMAND_ONLY, Integer.valueOf(this.a));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$f */
    public static final class f implements InterfaceC3753o1 {
        private final long a;

        public f(long j) {
            this.a = j;
        }

        private final long a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof f) && this.a == ((f) obj).a;
        }

        public int hashCode() {
            return Long.hashCode(this.a);
        }

        public String toString() {
            return "Duration(duration=" + this.a + ")";
        }

        public final f a(long j) {
            return new f(j);
        }

        public static /* synthetic */ f a(f fVar, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = fVar.a;
            }
            return fVar.a(j);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put("duration", Long.valueOf(this.a));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$g */
    public static final class g implements InterfaceC3753o1 {
        private final String a;

        public g(String dynamicSourceId) {
            Intrinsics.checkNotNullParameter(dynamicSourceId, "dynamicSourceId");
            this.a = dynamicSourceId;
        }

        private final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof g) && Intrinsics.areEqual(this.a, ((g) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "DynamicDemandSourceId(dynamicSourceId=" + this.a + ")";
        }

        public final g a(String dynamicSourceId) {
            Intrinsics.checkNotNullParameter(dynamicSourceId, "dynamicSourceId");
            return new g(dynamicSourceId);
        }

        public static /* synthetic */ g a(g gVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = gVar.a;
            }
            return gVar.a(str);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put("dynamicDemandSource", this.a);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$h */
    public static final class h implements InterfaceC3753o1 {
        private final String a;

        public h(String sourceId) {
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.a = sourceId;
        }

        private final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof h) && Intrinsics.areEqual(this.a, ((h) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "DynamicSourceId(sourceId=" + this.a + ")";
        }

        public final h a(String sourceId) {
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new h(sourceId);
        }

        public static /* synthetic */ h a(h hVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = hVar.a;
            }
            return hVar.a(str);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put("dynamicDemandSource", this.a);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$i */
    public static final class i implements InterfaceC3753o1 {
        public static final i a = new i();

        private i() {
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$j */
    public static final class j implements InterfaceC3753o1 {
        private final int a;

        public j(int i) {
            this.a = i;
        }

        private final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof j) && this.a == ((j) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "ErrorCode(code=" + this.a + ")";
        }

        public final j a(int i) {
            return new j(i);
        }

        public static /* synthetic */ j a(j jVar, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = jVar.a;
            }
            return jVar.a(i);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put("errorCode", Integer.valueOf(this.a));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$k */
    public static final class k implements InterfaceC3753o1 {
        private final String a;

        public k(String str) {
            this.a = str;
        }

        private final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof k) && Intrinsics.areEqual(this.a, ((k) obj).a);
        }

        public int hashCode() {
            String str = this.a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "ErrorReason(reason=" + this.a + ")";
        }

        public final k a(String str) {
            return new k(str);
        }

        public static /* synthetic */ k a(k kVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = kVar.a;
            }
            return kVar.a(str);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            String str = this.a;
            if (str == null || str.length() == 0) {
                return;
            }
            bundle.put("reason", this.a);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$l */
    public static final class l implements InterfaceC3753o1 {
        private final String a;

        public l(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.a = value;
        }

        private final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof l) && Intrinsics.areEqual(this.a, ((l) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "Ext1(value=" + this.a + ")";
        }

        public final l a(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new l(value);
        }

        public static /* synthetic */ l a(l lVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = lVar.a;
            }
            return lVar.a(str);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put(IronSourceConstants.EVENTS_EXT1, this.a);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$m */
    public static final class m implements InterfaceC3753o1 {
        private final JSONObject a;

        public m(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        private final JSONObject a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof m) && Intrinsics.areEqual(this.a, ((m) obj).a);
        }

        public int hashCode() {
            JSONObject jSONObject = this.a;
            if (jSONObject == null) {
                return 0;
            }
            return jSONObject.hashCode();
        }

        public String toString() {
            return "GenericParams(genericParams=" + this.a + ")";
        }

        public final m a(JSONObject jSONObject) {
            return new m(jSONObject);
        }

        public static /* synthetic */ m a(m mVar, JSONObject jSONObject, int i, Object obj) {
            if ((i & 1) != 0) {
                jSONObject = mVar.a;
            }
            return mVar.a(jSONObject);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            JSONObject jSONObject = this.a;
            if (jSONObject == null) {
                return;
            }
            bundle.put("genericParams", jSONObject);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$n */
    public static final class n implements InterfaceC3753o1 {
        private final int a;

        public n(int i) {
            this.a = i;
        }

        private final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof n) && this.a == ((n) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "InstanceType(instanceType=" + this.a + ")";
        }

        public final n a(int i) {
            return new n(i);
        }

        public static /* synthetic */ n a(n nVar, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = nVar.a;
            }
            return nVar.a(i);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put("instanceType", Integer.valueOf(this.a));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$o */
    public static final class o implements InterfaceC3753o1 {
        private final int a;

        public o(int i) {
            this.a = i;
        }

        private final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof o) && this.a == ((o) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "MultipleAdObjects(value=" + this.a + ")";
        }

        public final o a(int i) {
            return new o(i);
        }

        public static /* synthetic */ o a(o oVar, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = oVar.a;
            }
            return oVar.a(i);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put("isMultipleAdObjects", Integer.valueOf(this.a));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$p */
    public static final class p implements InterfaceC3753o1 {
        private final int a;

        public p(int i) {
            this.a = i;
        }

        private final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof p) && this.a == ((p) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "OneFlow(value=" + this.a + ")";
        }

        public final p a(int i) {
            return new p(i);
        }

        public static /* synthetic */ p a(p pVar, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = pVar.a;
            }
            return pVar.a(i);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put("isOneFlow", Integer.valueOf(this.a));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$q */
    public static final class q implements InterfaceC3753o1 {
        private final String a;

        public q(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.a = value;
        }

        private final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof q) && Intrinsics.areEqual(this.a, ((q) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "Placement(value=" + this.a + ")";
        }

        public final q a(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new q(value);
        }

        public static /* synthetic */ q a(q qVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = qVar.a;
            }
            return qVar.a(str);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put("placement", this.a);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$r */
    public static final class r implements InterfaceC3753o1 {
        private final int a;

        public r(int i) {
            this.a = i;
        }

        private final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof r) && this.a == ((r) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "Programmatic(programmatic=" + this.a + ")";
        }

        public final r a(int i) {
            return new r(i);
        }

        public static /* synthetic */ r a(r rVar, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = rVar.a;
            }
            return rVar.a(i);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put(IronSourceConstants.EVENTS_PROGRAMMATIC, Integer.valueOf(this.a));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$s */
    public static final class s implements InterfaceC3753o1 {
        private final String a;

        public s(String sourceName) {
            Intrinsics.checkNotNullParameter(sourceName, "sourceName");
            this.a = sourceName;
        }

        private final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof s) && Intrinsics.areEqual(this.a, ((s) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "Provider(sourceName=" + this.a + ")";
        }

        public final s a(String sourceName) {
            Intrinsics.checkNotNullParameter(sourceName, "sourceName");
            return new s(sourceName);
        }

        public static /* synthetic */ s a(s sVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = sVar.a;
            }
            return sVar.a(str);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put(IronSourceConstants.EVENTS_PROVIDER, this.a);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$t */
    public static final class t implements InterfaceC3753o1 {
        private final int a;

        public t(int i) {
            this.a = i;
        }

        private final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof t) && this.a == ((t) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "RewardAmount(value=" + this.a + ")";
        }

        public final t a(int i) {
            return new t(i);
        }

        public static /* synthetic */ t a(t tVar, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = tVar.a;
            }
            return tVar.a(i);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put(IronSourceConstants.EVENTS_REWARD_AMOUNT, Integer.valueOf(this.a));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$u */
    public static final class u implements InterfaceC3753o1 {
        private final String a;

        public u(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.a = value;
        }

        private final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof u) && Intrinsics.areEqual(this.a, ((u) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "RewardName(value=" + this.a + ")";
        }

        public final u a(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new u(value);
        }

        public static /* synthetic */ u a(u uVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = uVar.a;
            }
            return uVar.a(str);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put(IronSourceConstants.EVENTS_REWARD_NAME, this.a);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$v */
    public static final class v implements InterfaceC3753o1 {
        private final String a;

        public v(String version) {
            Intrinsics.checkNotNullParameter(version, "version");
            this.a = version;
        }

        private final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof v) && Intrinsics.areEqual(this.a, ((v) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "SdkVersion(version=" + this.a + ")";
        }

        public final v a(String version) {
            Intrinsics.checkNotNullParameter(version, "version");
            return new v(version);
        }

        public static /* synthetic */ v a(v vVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = vVar.a;
            }
            return vVar.a(str);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, this.a);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$w */
    public static final class w implements InterfaceC3753o1 {
        private final int a;

        public w(int i) {
            this.a = i;
        }

        private final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof w) && this.a == ((w) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "SessionDepth(sessionDepth=" + this.a + ")";
        }

        public final w a(int i) {
            return new w(i);
        }

        public static /* synthetic */ w a(w wVar, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = wVar.a;
            }
            return wVar.a(i);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put("sessionDepth", Integer.valueOf(this.a));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$x */
    public static final class x implements InterfaceC3753o1 {
        private final String a;

        public x(String subProviderId) {
            Intrinsics.checkNotNullParameter(subProviderId, "subProviderId");
            this.a = subProviderId;
        }

        private final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof x) && Intrinsics.areEqual(this.a, ((x) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "SubProviderId(subProviderId=" + this.a + ")";
        }

        public final x a(String subProviderId) {
            Intrinsics.checkNotNullParameter(subProviderId, "subProviderId");
            return new x(subProviderId);
        }

        public static /* synthetic */ x a(x xVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = xVar.a;
            }
            return xVar.a(str);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put("spId", this.a);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n1$y */
    public static final class y implements InterfaceC3753o1 {
        private final String a;

        public y(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.a = value;
        }

        private final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof y) && Intrinsics.areEqual(this.a, ((y) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "TransId(value=" + this.a + ")";
        }

        public final y a(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new y(value);
        }

        public static /* synthetic */ y a(y yVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = yVar.a;
            }
            return yVar.a(str);
        }

        @Override // com.ironsource.InterfaceC3753o1
        public void a(Map<String, Object> bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.put(IronSourceConstants.EVENTS_TRANS_ID, this.a);
        }
    }

    private C3735n1() {
    }
}
