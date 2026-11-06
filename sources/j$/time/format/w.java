package j$.time.format;

import j$.time.Instant;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC4273b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class w implements j$.time.temporal.n {
    j$.time.x b;
    j$.time.chrono.l c;
    boolean d;
    private x e;
    private InterfaceC4273b f;
    private j$.time.k g;
    final HashMap a = new HashMap();
    j$.time.r h = j$.time.r.d;

    w() {
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        if (this.a.containsKey(sVar)) {
            return true;
        }
        InterfaceC4273b interfaceC4273b = this.f;
        if (interfaceC4273b != null && interfaceC4273b.f(sVar)) {
            return true;
        }
        j$.time.k kVar = this.g;
        if (kVar == null || !kVar.f(sVar)) {
            return (sVar == null || (sVar instanceof j$.time.temporal.a) || !sVar.W(this)) ? false : true;
        }
        return true;
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        Objects.requireNonNull(sVar, "field");
        Long l = (Long) this.a.get(sVar);
        if (l != null) {
            return l.longValue();
        }
        InterfaceC4273b interfaceC4273b = this.f;
        if (interfaceC4273b != null && interfaceC4273b.f(sVar)) {
            return this.f.g(sVar);
        }
        j$.time.k kVar = this.g;
        if (kVar != null && kVar.f(sVar)) {
            return this.g.g(sVar);
        }
        if (sVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.w(j$.time.d.a("Unsupported field: ", sVar));
        }
        return sVar.r(this);
    }

    @Override // j$.time.temporal.n
    public final Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.g()) {
            return this.b;
        }
        if (uVar == j$.time.temporal.t.a()) {
            return this.c;
        }
        if (uVar == j$.time.temporal.t.b()) {
            InterfaceC4273b interfaceC4273b = this.f;
            if (interfaceC4273b != null) {
                return j$.time.h.J(interfaceC4273b);
            }
            return null;
        }
        if (uVar == j$.time.temporal.t.c()) {
            return this.g;
        }
        if (uVar == j$.time.temporal.t.d()) {
            Long l = (Long) this.a.get(j$.time.temporal.a.OFFSET_SECONDS);
            if (l != null) {
                return ZoneOffset.e0(l.intValue());
            }
            j$.time.x xVar = this.b;
            return xVar instanceof ZoneOffset ? xVar : uVar.j(this);
        }
        if (uVar == j$.time.temporal.t.f()) {
            return uVar.j(this);
        }
        if (uVar == j$.time.temporal.t.e()) {
            return null;
        }
        return uVar.j(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x01b9  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void r(j$.time.format.x r27) {
        /*
            Method dump skipped, instruction units count: 755
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.w.r(j$.time.format.x):void");
    }

    private void C(j$.time.temporal.s sVar, j$.time.temporal.a aVar, Long l) {
        Long l2 = (Long) this.a.put(aVar, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new j$.time.c("Conflict found: " + aVar + " " + l2 + " differs from " + aVar + " " + l + " while resolving  " + sVar);
    }

    private void s() {
        HashMap map = this.a;
        if (map.containsKey(j$.time.temporal.a.INSTANT_SECONDS)) {
            j$.time.x xVar = this.b;
            if (xVar != null) {
                t(xVar);
                return;
            }
            Long l = (Long) map.get(j$.time.temporal.a.OFFSET_SECONDS);
            if (l != null) {
                t(ZoneOffset.e0(l.intValue()));
            }
        }
    }

    private void t(j$.time.x xVar) {
        HashMap map = this.a;
        j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
        A(this.c.y(Instant.T(((Long) map.remove(aVar)).longValue()), xVar).o());
        C(aVar, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(r5.n().l0()));
    }

    private void A(InterfaceC4273b interfaceC4273b) {
        InterfaceC4273b interfaceC4273b2 = this.f;
        if (interfaceC4273b2 != null) {
            if (interfaceC4273b == null || interfaceC4273b2.equals(interfaceC4273b)) {
                return;
            }
            throw new j$.time.c("Conflict found: Fields resolved to two different dates: " + this.f + " " + interfaceC4273b);
        }
        if (interfaceC4273b != null) {
            if (!this.c.equals(interfaceC4273b.h())) {
                throw new j$.time.c("ChronoLocalDate must use the effective parsed chronology: " + this.c);
            }
            this.f = interfaceC4273b;
        }
    }

    private void x() {
        HashMap map = this.a;
        j$.time.temporal.a aVar = j$.time.temporal.a.CLOCK_HOUR_OF_DAY;
        if (map.containsKey(aVar)) {
            long jLongValue = ((Long) map.remove(aVar)).longValue();
            x xVar = this.e;
            if (xVar == x.STRICT || (xVar == x.SMART && jLongValue != 0)) {
                aVar.a0(jLongValue);
            }
            j$.time.temporal.a aVar2 = j$.time.temporal.a.HOUR_OF_DAY;
            if (jLongValue == 24) {
                jLongValue = 0;
            }
            C(aVar, aVar2, Long.valueOf(jLongValue));
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.CLOCK_HOUR_OF_AMPM;
        if (map.containsKey(aVar3)) {
            long jLongValue2 = ((Long) map.remove(aVar3)).longValue();
            x xVar2 = this.e;
            if (xVar2 == x.STRICT || (xVar2 == x.SMART && jLongValue2 != 0)) {
                aVar3.a0(jLongValue2);
            }
            C(aVar3, j$.time.temporal.a.HOUR_OF_AMPM, Long.valueOf(jLongValue2 != 12 ? jLongValue2 : 0L));
        }
        j$.time.temporal.a aVar4 = j$.time.temporal.a.AMPM_OF_DAY;
        if (map.containsKey(aVar4)) {
            j$.time.temporal.a aVar5 = j$.time.temporal.a.HOUR_OF_AMPM;
            if (map.containsKey(aVar5)) {
                long jLongValue3 = ((Long) map.remove(aVar4)).longValue();
                long jLongValue4 = ((Long) map.remove(aVar5)).longValue();
                if (this.e == x.LENIENT) {
                    C(aVar4, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(Math.addExact(Math.multiplyExact(jLongValue3, 12), jLongValue4)));
                } else {
                    aVar4.a0(jLongValue3);
                    aVar5.a0(jLongValue3);
                    C(aVar4, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf((jLongValue3 * 12) + jLongValue4));
                }
            }
        }
        j$.time.temporal.a aVar6 = j$.time.temporal.a.NANO_OF_DAY;
        if (map.containsKey(aVar6)) {
            long jLongValue5 = ((Long) map.remove(aVar6)).longValue();
            if (this.e != x.LENIENT) {
                aVar6.a0(jLongValue5);
            }
            C(aVar6, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(jLongValue5 / 3600000000000L));
            C(aVar6, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf((jLongValue5 / 60000000000L) % 60));
            C(aVar6, j$.time.temporal.a.SECOND_OF_MINUTE, Long.valueOf((jLongValue5 / 1000000000) % 60));
            C(aVar6, j$.time.temporal.a.NANO_OF_SECOND, Long.valueOf(jLongValue5 % 1000000000));
        }
        j$.time.temporal.a aVar7 = j$.time.temporal.a.MICRO_OF_DAY;
        if (map.containsKey(aVar7)) {
            long jLongValue6 = ((Long) map.remove(aVar7)).longValue();
            if (this.e != x.LENIENT) {
                aVar7.a0(jLongValue6);
            }
            C(aVar7, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(jLongValue6 / 1000000));
            C(aVar7, j$.time.temporal.a.MICRO_OF_SECOND, Long.valueOf(jLongValue6 % 1000000));
        }
        j$.time.temporal.a aVar8 = j$.time.temporal.a.MILLI_OF_DAY;
        if (map.containsKey(aVar8)) {
            long jLongValue7 = ((Long) map.remove(aVar8)).longValue();
            if (this.e != x.LENIENT) {
                aVar8.a0(jLongValue7);
            }
            C(aVar8, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(jLongValue7 / 1000));
            C(aVar8, j$.time.temporal.a.MILLI_OF_SECOND, Long.valueOf(jLongValue7 % 1000));
        }
        j$.time.temporal.a aVar9 = j$.time.temporal.a.SECOND_OF_DAY;
        if (map.containsKey(aVar9)) {
            long jLongValue8 = ((Long) map.remove(aVar9)).longValue();
            if (this.e != x.LENIENT) {
                aVar9.a0(jLongValue8);
            }
            C(aVar9, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(jLongValue8 / 3600));
            C(aVar9, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf((jLongValue8 / 60) % 60));
            C(aVar9, j$.time.temporal.a.SECOND_OF_MINUTE, Long.valueOf(jLongValue8 % 60));
        }
        j$.time.temporal.a aVar10 = j$.time.temporal.a.MINUTE_OF_DAY;
        if (map.containsKey(aVar10)) {
            long jLongValue9 = ((Long) map.remove(aVar10)).longValue();
            if (this.e != x.LENIENT) {
                aVar10.a0(jLongValue9);
            }
            C(aVar10, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(jLongValue9 / 60));
            C(aVar10, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf(jLongValue9 % 60));
        }
        j$.time.temporal.a aVar11 = j$.time.temporal.a.NANO_OF_SECOND;
        if (map.containsKey(aVar11)) {
            long jLongValue10 = ((Long) map.get(aVar11)).longValue();
            x xVar3 = this.e;
            x xVar4 = x.LENIENT;
            if (xVar3 != xVar4) {
                aVar11.a0(jLongValue10);
            }
            j$.time.temporal.a aVar12 = j$.time.temporal.a.MICRO_OF_SECOND;
            if (map.containsKey(aVar12)) {
                long jLongValue11 = ((Long) map.remove(aVar12)).longValue();
                if (this.e != xVar4) {
                    aVar12.a0(jLongValue11);
                }
                jLongValue10 = (jLongValue10 % 1000) + (jLongValue11 * 1000);
                C(aVar12, aVar11, Long.valueOf(jLongValue10));
            }
            j$.time.temporal.a aVar13 = j$.time.temporal.a.MILLI_OF_SECOND;
            if (map.containsKey(aVar13)) {
                long jLongValue12 = ((Long) map.remove(aVar13)).longValue();
                if (this.e != xVar4) {
                    aVar13.a0(jLongValue12);
                }
                C(aVar13, aVar11, Long.valueOf((jLongValue10 % 1000000) + (jLongValue12 * 1000000)));
            }
        }
        j$.time.temporal.a aVar14 = j$.time.temporal.a.HOUR_OF_DAY;
        if (map.containsKey(aVar14)) {
            j$.time.temporal.a aVar15 = j$.time.temporal.a.MINUTE_OF_HOUR;
            if (map.containsKey(aVar15)) {
                j$.time.temporal.a aVar16 = j$.time.temporal.a.SECOND_OF_MINUTE;
                if (map.containsKey(aVar16) && map.containsKey(aVar11)) {
                    w(((Long) map.remove(aVar14)).longValue(), ((Long) map.remove(aVar15)).longValue(), ((Long) map.remove(aVar16)).longValue(), ((Long) map.remove(aVar11)).longValue());
                }
            }
        }
    }

    private void w(long j, long j2, long j3, long j4) {
        if (this.e == x.LENIENT) {
            long jAddExact = Math.addExact(Math.addExact(Math.addExact(Math.multiplyExact(j, 3600000000000L), Math.multiplyExact(j2, 60000000000L)), Math.multiplyExact(j3, 1000000000L)), j4);
            y(j$.time.k.c0(Math.floorMod(jAddExact, 86400000000000L)), j$.time.r.b((int) Math.floorDiv(jAddExact, 86400000000000L)));
            return;
        }
        int iZ = j$.time.temporal.a.MINUTE_OF_HOUR.Z(j2);
        int iZ2 = j$.time.temporal.a.NANO_OF_SECOND.Z(j4);
        if (this.e == x.SMART && j == 24 && iZ == 0 && j3 == 0 && iZ2 == 0) {
            y(j$.time.k.g, j$.time.r.b(1));
        } else {
            y(j$.time.k.b0(j$.time.temporal.a.HOUR_OF_DAY.Z(j), iZ, j$.time.temporal.a.SECOND_OF_MINUTE.Z(j3), iZ2), j$.time.r.d);
        }
    }

    private void y(j$.time.k kVar, j$.time.r rVar) {
        j$.time.k kVar2 = this.g;
        if (kVar2 != null) {
            if (!kVar2.equals(kVar)) {
                throw new j$.time.c("Conflict found: Fields resolved to different times: " + this.g + " " + kVar);
            }
            j$.time.r rVar2 = this.h;
            rVar2.getClass();
            j$.time.r rVar3 = j$.time.r.d;
            if (rVar2 != rVar3 && rVar != rVar3 && !this.h.equals(rVar)) {
                throw new j$.time.c("Conflict found: Fields resolved to different excess periods: " + this.h + " " + rVar);
            }
            this.h = rVar;
            return;
        }
        this.g = kVar;
        this.h = rVar;
    }

    private void q(j$.time.temporal.n nVar) {
        Iterator it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            j$.time.temporal.s sVar = (j$.time.temporal.s) entry.getKey();
            if (nVar.f(sVar)) {
                try {
                    long jG = nVar.g(sVar);
                    long jLongValue = ((Long) entry.getValue()).longValue();
                    if (jG != jLongValue) {
                        throw new j$.time.c("Conflict found: Field " + sVar + " " + jG + " differs from " + sVar + " " + jLongValue + " derived from " + nVar);
                    }
                    it.remove();
                } catch (RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(this.a);
        sb.append(',');
        sb.append(this.c);
        if (this.b != null) {
            sb.append(',');
            sb.append(this.b);
        }
        if (this.f != null || this.g != null) {
            sb.append(" resolved to ");
            InterfaceC4273b interfaceC4273b = this.f;
            if (interfaceC4273b != null) {
                sb.append(interfaceC4273b);
                if (this.g != null) {
                    sb.append('T');
                    sb.append(this.g);
                }
            } else {
                sb.append(this.g);
            }
        }
        return sb.toString();
    }
}
