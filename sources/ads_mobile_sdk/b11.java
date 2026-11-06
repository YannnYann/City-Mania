package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b11 extends vz0.a implements uw1 {
    public final void a(ArrayList arrayList) {
        d();
        e11 e11Var = (e11) this.b;
        yh1.c cVar = e11Var.activeCuiStack_;
        if (!cVar.b()) {
            e11Var.activeCuiStack_ = vz0.a(cVar);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            e11Var.activeCuiStack_.b(((mt1) it.next()).getNumber());
        }
    }

    public final void b(ArrayList arrayList) {
        d();
        e11 e11Var = (e11) this.b;
        yh1.e eVar = e11Var.experimentId_;
        if (!eVar.b()) {
            e11Var.experimentId_ = vz0.a(eVar);
        }
        f.a(arrayList, e11Var.experimentId_);
    }

    public final void c(String str) {
        d();
        ((e11) this.b).d(str);
    }

    public final void d(String str) {
        d();
        ((e11) this.b).e(str);
    }

    public final void e(String str) {
        d();
        ((e11) this.b).f(str);
    }

    public final void f(String str) {
        d();
        ((e11) this.b).g(str);
    }

    public final void g(String str) {
        d();
        ((e11) this.b).h(str);
    }

    public final void h() {
        d();
        e11 e11Var = (e11) this.b;
        e11Var.getClass();
        e11Var.activeCuiStack_ = vz0.i();
    }

    public final void n(String str) {
        d();
        ((e11) this.b).o(str);
    }

    public final void o(String str) {
        d();
        ((e11) this.b).p(str);
    }

    public final void p(String str) {
        d();
        ((e11) this.b).q(str);
    }

    public final void q(String str) {
        d();
        ((e11) this.b).r(str);
    }

    public final void r(String str) {
        d();
        ((e11) this.b).s(str);
    }

    public final void s(String str) {
        d();
        ((e11) this.b).t(str);
    }

    public final void t(String str) {
        d();
        ((e11) this.b).u(str);
    }

    public final void u(String str) {
        d();
        ((e11) this.b).v(str);
    }

    public final void v(String str) {
        d();
        ((e11) this.b).w(str);
    }

    public final void w(String str) {
        d();
        ((e11) this.b).x(str);
    }

    public final void x(String str) {
        d();
        ((e11) this.b).y(str);
    }

    public final void y(String str) {
        d();
        ((e11) this.b).z(str);
    }

    public final void n() {
        ot1 ot1Var = ot1.OS_ANDROID;
        d();
        e11 e11Var = (e11) this.b;
        e11Var.getClass();
        e11Var.os_ = ot1Var.getNumber();
    }

    public final void c(int i) {
        d();
        ((e11) this.b).liveWebviewCount_ = i;
    }

    public final void d(int i) {
        d();
        ((e11) this.b).mediationChainLength_ = i;
    }

    public final void e(int i) {
        d();
        ((e11) this.b).targetVersion_ = i;
    }

    public final void f(int i) {
        d();
        ((e11) this.b).totalCpu_ = i;
    }

    public final void h(String str) {
        d();
        ((e11) this.b).i(str);
    }

    public final void c(long j) {
        d();
        ((e11) this.b).samplingDenominator_ = j;
    }

    public final void d(long j) {
        d();
        ((e11) this.b).thresholdMemoryBytes_ = j;
    }

    public final void e(long j) {
        d();
        ((e11) this.b).timeMsec_ = j;
    }

    public final void f(long j) {
        d();
        ((e11) this.b).totalMemoryBytes_ = j;
    }

    public final void b(a11 a11Var) {
        d();
        ((e11) this.b).b(a11Var);
    }

    public final void a(a11 a11Var) {
        d();
        ((e11) this.b).a(a11Var);
    }

    public final void b(String str) {
        d();
        ((e11) this.b).c(str);
    }

    public final void a(mt1 mt1Var) {
        d();
        e11 e11Var = (e11) this.b;
        e11Var.getClass();
        e11Var.activeCui_ = mt1Var.getNumber();
    }

    public final void b(long j) {
        d();
        ((e11) this.b).deviceAdvertisedMemorySize_ = j;
    }

    public final void a(String str) {
        d();
        ((e11) this.b).b(str);
    }

    public final void b(int i) {
        d();
        ((e11) this.b).displayWidth_ = i;
    }

    public final void a(long j) {
        d();
        ((e11) this.b).availableMemoryBytes_ = j;
    }

    public final void b(boolean z) {
        d();
        ((e11) this.b).trapped_ = z;
    }

    public final void a(lv lvVar) {
        d();
        ((e11) this.b).a(lvVar);
    }

    public final void a(mm0 mm0Var) {
        d();
        e11 e11Var = (e11) this.b;
        e11Var.getClass();
        e11Var.deviceAdvertisedMemTier_ = mm0Var.getNumber();
    }

    public final void a(nm0 nm0Var) {
        d();
        e11 e11Var = (e11) this.b;
        e11Var.getClass();
        e11Var.deviceAvailableMemoryTier_ = nm0Var.getNumber();
    }

    public final void a(om0 om0Var) {
        d();
        e11 e11Var = (e11) this.b;
        e11Var.getClass();
        e11Var.deviceAvailableProcessorTier_ = om0Var.getNumber();
    }

    public final void a(int i) {
        d();
        ((e11) this.b).displayHeight_ = i;
    }

    public final void a(nt1 nt1Var) {
        d();
        e11 e11Var = (e11) this.b;
        e11Var.getClass();
        e11Var.format_ = nt1Var.getNumber();
    }

    public final void a(boolean z) {
        d();
        ((e11) this.b).lowMemory_ = z;
    }

    public b11() {
        super(e11.DEFAULT_INSTANCE);
    }

    public final boolean m() {
        return ((e11) this.b).trapped_;
    }

    public final void m(String str) {
        d();
        ((e11) this.b).n(str);
    }

    public final List j() {
        return Collections.unmodifiableList(((e11) this.b).experimentId_);
    }

    public final void j(String str) {
        d();
        ((e11) this.b).k(str);
    }

    public final List k() {
        return Collections.unmodifiableList(((e11) this.b).loadedAdsStats_);
    }

    public final void k(String str) {
        d();
        ((e11) this.b).l(str);
    }

    public final List l() {
        return Collections.unmodifiableList(((e11) this.b).showingAdsStats_);
    }

    public final void l(String str) {
        d();
        ((e11) this.b).m(str);
    }

    public final List i() {
        e11 e11Var = (e11) this.b;
        e11Var.getClass();
        return new yh1.d(e11Var.activeCuiStack_, e11.activeCuiStack_converter_);
    }

    public final void i(String str) {
        d();
        ((e11) this.b).j(str);
    }
}
