package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class E0 {
    private static final int p = -1;
    private final IronSource.a a;
    private final b b;
    private D0 c;
    private final AbstractC3812r3 d;
    public C3582e9 e;
    public Cb f;
    public C3714lg g;
    public C3520b2 h;
    public N i;
    public C3790pg j;
    public C3470ad k;
    private Map<B0, a> l;
    private Map<B0, a> m;
    private Map<B0, a> n;
    private Map<B0, a> o;

    public static class a {
        private final int a;
        private final int b;

        public a(D5 d5, D5 d52) {
            if (d5 != null) {
                this.a = d5.c();
            } else {
                this.a = -1;
            }
            if (d52 != null) {
                this.b = d52.c();
            } else {
                this.b = -1;
            }
        }

        public int a(b bVar) {
            return b.MEDIATION.equals(bVar) ? this.a : this.b;
        }
    }

    public enum b {
        MEDIATION,
        PROVIDER
    }

    public E0(IronSource.a aVar, b bVar, D0 d0) {
        this(aVar, bVar, d0, a(aVar));
    }

    private static AbstractC3812r3 a(IronSource.a aVar) {
        return aVar.equals(IronSource.a.REWARDED_VIDEO) ? C3694ke.i() : N9.i();
    }

    private void d() {
        HashMap map = new HashMap();
        this.o = map;
        map.put(B0.INIT_STARTED, new a(D5.M6, null));
        this.o.put(B0.INIT_ENDED, new a(D5.N6, null));
        this.o.put(B0.PLACEMENT_CAPPED, new a(D5.y3, null));
        this.o.put(B0.AUCTION_REQUEST, new a(D5.z3, null));
        this.o.put(B0.AUCTION_SUCCESS, new a(D5.B3, null));
        Map<B0, a> map2 = this.o;
        B0 b0 = B0.AUCTION_FAILED;
        D5 d5 = D5.A3;
        map2.put(b0, new a(d5, null));
        this.o.put(B0.AUCTION_FAILED_NO_CANDIDATES, new a(d5, null));
        this.o.put(B0.AUCTION_REQUEST_WATERFALL, new a(D5.D3, null));
        this.o.put(B0.AUCTION_RESULT_WATERFALL, new a(D5.E3, null));
        this.o.put(B0.INIT_SUCCESS, new a(null, null));
        this.o.put(B0.INIT_FAILED, new a(null, null));
        this.o.put(B0.AD_OPENED, new a(D5.u3, D5.l3));
        this.o.put(B0.AD_CLICKED, new a(D5.t3, D5.k3));
        this.o.put(B0.LOAD_AD, new a(D5.g3, D5.h3));
        this.o.put(B0.LOAD_AD_SUCCESS, new a(D5.r3, D5.i3));
        this.o.put(B0.LOAD_AD_FAILED_WITH_REASON, new a(D5.s3, D5.v3));
        this.o.put(B0.LOAD_AD_NO_FILL, new a(null, D5.x3));
        this.o.put(B0.AD_FORMAT_CAPPED, new a(D5.C3, null));
        Map<B0, a> map3 = this.o;
        B0 b02 = B0.COLLECT_TOKEN;
        D5 d52 = D5.F3;
        D5 d53 = D5.m3;
        map3.put(b02, new a(d52, d53));
        this.o.put(B0.COLLECT_TOKENS_COMPLETED, new a(D5.G3, null));
        this.o.put(B0.COLLECT_TOKENS_FAILED, new a(D5.H3, null));
        this.o.put(B0.INSTANCE_COLLECT_TOKEN, new a(d53, null));
        Map<B0, a> map4 = this.o;
        B0 b03 = B0.INSTANCE_COLLECT_TOKEN_SUCCESS;
        D5 d54 = D5.n3;
        map4.put(b03, new a(d54, d54));
        Map<B0, a> map5 = this.o;
        B0 b04 = B0.INSTANCE_COLLECT_TOKEN_FAILED;
        D5 d55 = D5.o3;
        map5.put(b04, new a(d55, d55));
        Map<B0, a> map6 = this.o;
        B0 b05 = B0.INSTANCE_COLLECT_TOKEN_TIMED_OUT;
        D5 d56 = D5.p3;
        map6.put(b05, new a(d56, d56));
        this.o.put(B0.DESTROY_AD, new a(D5.q3, D5.w3));
        this.o.put(B0.TROUBLESHOOT_ILR_REVENUE, new a(D5.A6, null));
        Map<B0, a> map7 = this.o;
        B0 b06 = B0.TROUBLESHOOT_PROVIDER_SETTINGS_MISSING;
        D5 d57 = D5.B6;
        map7.put(b06, new a(d57, d57));
        Map<B0, a> map8 = this.o;
        B0 b07 = B0.TROUBLESHOOT_UNEXPECTED_INIT_SUCCESS;
        D5 d58 = D5.D6;
        map8.put(b07, new a(d58, d58));
        Map<B0, a> map9 = this.o;
        B0 b08 = B0.TROUBLESHOOT_UNEXPECTED_INIT_FAILED;
        D5 d59 = D5.E6;
        map9.put(b08, new a(d59, d59));
        Map<B0, a> map10 = this.o;
        B0 b09 = B0.TROUBLESHOOT_UNEXPECTED_AUCTION_SUCCESS;
        D5 d510 = D5.F6;
        map10.put(b09, new a(d510, d510));
        Map<B0, a> map11 = this.o;
        B0 b010 = B0.TROUBLESHOOT_UNEXPECTED_AUCTION_FAILED;
        D5 d511 = D5.G6;
        map11.put(b010, new a(d511, d511));
        Map<B0, a> map12 = this.o;
        B0 b011 = B0.TROUBLESHOOT_UNEXPECTED_LOAD_SUCCESS;
        D5 d512 = D5.H6;
        map12.put(b011, new a(d512, d512));
        Map<B0, a> map13 = this.o;
        B0 b012 = B0.TROUBLESHOOT_UNEXPECTED_LOAD_FAILED;
        D5 d513 = D5.I6;
        map13.put(b012, new a(d513, d513));
        Map<B0, a> map14 = this.o;
        B0 b013 = B0.TROUBLESHOOT_UNEXPECTED_TIMEOUT;
        D5 d514 = D5.K6;
        map14.put(b013, new a(d514, d514));
        Map<B0, a> map15 = this.o;
        B0 b014 = B0.TROUBLESHOOT_UNEXPECTED_OPENED;
        D5 d515 = D5.L6;
        map15.put(b014, new a(d515, d515));
        Map<B0, a> map16 = this.o;
        B0 b015 = B0.TROUBLESHOOT_INTERNAL_ERROR;
        D5 d516 = D5.J6;
        map16.put(b015, new a(d516, d516));
        Map<B0, a> map17 = this.o;
        B0 b016 = B0.TROUBLESHOOT_ADAPTER_REPOSITORY_INTERNAL_ERROR;
        D5 d517 = D5.Q6;
        map17.put(b016, new a(d517, d517));
        Map<B0, a> map18 = this.o;
        B0 b017 = B0.TROUBLESHOOT_AUCTION_SUCCESSFUL_RECOVERY_ERROR;
        D5 d518 = D5.R6;
        map18.put(b017, new a(d518, d518));
        this.o.put(B0.TROUBLESHOOT_NOTIFICATION_ERROR, new a(D5.P6, null));
    }

    public void b() {
        c();
        e();
        a();
        d();
    }

    public void c() {
        HashMap map = new HashMap();
        this.l = map;
        map.put(B0.INIT_STARTED, new a(D5.B5, null));
        this.l.put(B0.INIT_ENDED, new a(D5.C5, null));
        this.l.put(B0.SESSION_CAPPED, new a(null, D5.V1));
        this.l.put(B0.PLACEMENT_CAPPED, new a(D5.U1, null));
        this.l.put(B0.CHECK_PLACEMENT_CAPPED, new a(D5.v1, null));
        this.l.put(B0.AUCTION_REQUEST, new a(D5.f1, null));
        this.l.put(B0.AUCTION_SUCCESS, new a(D5.M1, null));
        Map<B0, a> map2 = this.l;
        B0 b0 = B0.AUCTION_FAILED;
        D5 d5 = D5.L1;
        map2.put(b0, new a(d5, null));
        this.l.put(B0.AUCTION_FAILED_NO_CANDIDATES, new a(d5, null));
        this.l.put(B0.AUCTION_REQUEST_WATERFALL, new a(D5.P1, null));
        this.l.put(B0.AUCTION_RESULT_WATERFALL, new a(D5.Q1, null));
        this.l.put(B0.INIT_SUCCESS, new a(null, null));
        this.l.put(B0.INIT_FAILED, new a(null, null));
        this.l.put(B0.AD_OPENED, new a(null, D5.k1));
        this.l.put(B0.AD_CLOSED, new a(D5.y1, D5.E1));
        this.l.put(B0.AD_CLICKED, new a(D5.z1, D5.l1));
        this.l.put(B0.AD_INFO_CHANGED, new a(D5.A1, null));
        this.l.put(B0.LOAD_AD, new a(D5.g1, D5.h1));
        this.l.put(B0.LOAD_AD_SUCCESS, new a(D5.j1, D5.i1));
        this.l.put(B0.LOAD_AD_FAILED_WITH_REASON, new a(D5.w1, D5.B1));
        this.l.put(B0.LOAD_AD_NO_FILL, new a(null, D5.K1));
        this.l.put(B0.SHOW_AD, new a(D5.r1, D5.C1));
        this.l.put(B0.SHOW_AD_FAILED, new a(D5.x1, D5.D1));
        this.l.put(B0.AD_FORMAT_CAPPED, new a(D5.N1, null));
        this.l.put(B0.AD_UNIT_CAPPED, new a(D5.O1, null));
        this.l.put(B0.COLLECT_TOKEN, new a(D5.R1, null));
        this.l.put(B0.COLLECT_TOKENS_COMPLETED, new a(D5.S1, null));
        this.l.put(B0.COLLECT_TOKENS_FAILED, new a(D5.T1, null));
        this.l.put(B0.INSTANCE_COLLECT_TOKEN, new a(D5.m1, null));
        this.l.put(B0.INSTANCE_COLLECT_TOKEN_SUCCESS, new a(D5.n1, null));
        this.l.put(B0.INSTANCE_COLLECT_TOKEN_FAILED, new a(D5.o1, null));
        this.l.put(B0.INSTANCE_COLLECT_TOKEN_TIMED_OUT, new a(D5.p1, null));
        this.l.put(B0.AD_READY_TRUE, new a(D5.s1, null));
        this.l.put(B0.AD_READY_FALSE, new a(D5.t1, null));
        this.l.put(B0.OPERATIONAL_LOAD_AD, new a(D5.Z1, null));
        this.l.put(B0.OPERATIONAL_LOAD_SUCCESS, new a(D5.a2, null));
        this.l.put(B0.OPERATIONAL_LOAD_FAILED, new a(D5.b2, null));
        this.l.put(B0.OPERATIONAL_SET_CONFIGURATIONS, new a(D5.q1, null));
        this.l.put(B0.PRELOAD_ADUNIT_INITIATED, new a(D5.c2, null));
        this.l.put(B0.PRELOAD_ADUNIT_FAILED, new a(D5.d2, null));
        this.l.put(B0.PRELOAD_ADUNIT_LOAD_SUCCESS, new a(D5.e2, null));
        Map<B0, a> map3 = this.l;
        B0 b02 = B0.TROUBLESHOOT_PROVIDER_SETTINGS_MISSING;
        D5 d52 = D5.e5;
        map3.put(b02, new a(d52, d52));
        Map<B0, a> map4 = this.l;
        B0 b03 = B0.TROUBLESHOOT_UNEXPECTED_INIT_SUCCESS;
        D5 d53 = D5.g5;
        map4.put(b03, new a(d53, d53));
        Map<B0, a> map5 = this.l;
        B0 b04 = B0.TROUBLESHOOT_UNEXPECTED_INIT_FAILED;
        D5 d54 = D5.h5;
        map5.put(b04, new a(d54, d54));
        Map<B0, a> map6 = this.l;
        B0 b05 = B0.TROUBLESHOOT_UNEXPECTED_AUCTION_SUCCESS;
        D5 d55 = D5.i5;
        map6.put(b05, new a(d55, d55));
        Map<B0, a> map7 = this.l;
        B0 b06 = B0.TROUBLESHOOT_UNEXPECTED_AUCTION_FAILED;
        D5 d56 = D5.j5;
        map7.put(b06, new a(d56, d56));
        Map<B0, a> map8 = this.l;
        B0 b07 = B0.TROUBLESHOOT_UNEXPECTED_LOAD_SUCCESS;
        D5 d57 = D5.k5;
        map8.put(b07, new a(d57, d57));
        Map<B0, a> map9 = this.l;
        B0 b08 = B0.TROUBLESHOOT_UNEXPECTED_LOAD_FAILED;
        D5 d58 = D5.l5;
        map9.put(b08, new a(d58, d58));
        Map<B0, a> map10 = this.l;
        B0 b09 = B0.TROUBLESHOOT_UNEXPECTED_SHOW_FAILED;
        D5 d59 = D5.o5;
        map10.put(b09, new a(d59, d59));
        Map<B0, a> map11 = this.l;
        B0 b010 = B0.TROUBLESHOOT_UNEXPECTED_CLOSED;
        D5 d510 = D5.p5;
        map11.put(b010, new a(d510, d510));
        Map<B0, a> map12 = this.l;
        B0 b011 = B0.TROUBLESHOOT_UNEXPECTED_TIMEOUT;
        D5 d511 = D5.n5;
        map12.put(b011, new a(d511, d511));
        Map<B0, a> map13 = this.l;
        B0 b012 = B0.TROUBLESHOOT_INTERNAL_ERROR;
        D5 d512 = D5.m5;
        map13.put(b012, new a(d512, d512));
        Map<B0, a> map14 = this.l;
        B0 b013 = B0.TROUBLESHOOT_ADAPTER_REPOSITORY_INTERNAL_ERROR;
        D5 d513 = D5.Q6;
        map14.put(b013, new a(d513, d513));
        Map<B0, a> map15 = this.l;
        B0 b014 = B0.TROUBLESHOOT_AUCTION_SUCCESSFUL_RECOVERY_ERROR;
        D5 d514 = D5.R6;
        map15.put(b014, new a(d514, d514));
        this.l.put(B0.TROUBLESHOOT_NOTIFICATION_ERROR, new a(D5.E5, null));
        Map<B0, a> map16 = this.l;
        B0 b015 = B0.TROUBLESHOOT_AD_EXPIRED;
        D5 d515 = D5.H5;
        map16.put(b015, new a(d515, d515));
        this.l.put(B0.TROUBLESHOOT_LOAD, new a(D5.U4, null));
        this.l.put(B0.TROUBLESHOOT_LOAD_WHILE_LOADED, new a(D5.s5, null));
        this.l.put(B0.TROUBLESHOOT_LOAD_SUCCESS, new a(D5.X4, null));
        this.l.put(B0.TROUBLESHOOT_LOAD_FAILED, new a(D5.u5, null));
        this.l.put(B0.TROUBLESHOOT_SHOW, new a(D5.q5, null));
        this.l.put(B0.TROUBLESHOOT_SHOW_SUCCESS, new a(D5.w5, null));
        this.l.put(B0.TROUBLESHOOT_SHOW_FAILED, new a(D5.x5, null));
        Map<B0, a> map17 = this.l;
        B0 b016 = B0.TROUBLESHOOT_ILLEGAL_STATE;
        D5 d516 = D5.v5;
        map17.put(b016, new a(d516, d516));
        this.l.put(B0.TROUBLESHOOT_AD_INFO_CHANGED, new a(D5.t5, null));
        this.l.put(B0.TROUBLESHOOT_DESTROY_INSTANCES_READY_TO_SHOW, new a(D5.Y4, null));
        this.l.put(B0.TROUBLESHOOT_ILR_REVENUE, new a(D5.a5, null));
        this.l.put(B0.TROUBLESHOOT_SHOW_RECOVERY_INITIATED, new a(D5.Z4, null));
        this.l.put(B0.TROUBLESHOOT_ILR_SUBSCRIBE, new a(D5.b5, null));
        this.l.put(B0.TROUBLESHOOT_ILR_UNSUBSCRIBE, new a(D5.c5, null));
        this.l.put(B0.TROUBLESHOOT_ILR_REVENUE_INSTANCE, new a(D5.d5, null));
    }

    public void e() {
        HashMap map = new HashMap();
        this.m = map;
        map.put(B0.INIT_STARTED, new a(D5.E4, null));
        this.m.put(B0.INIT_ENDED, new a(D5.F4, null));
        this.m.put(B0.SESSION_CAPPED, new a(null, D5.U0));
        this.m.put(B0.PLACEMENT_CAPPED, new a(D5.T0, null));
        this.m.put(B0.CHECK_PLACEMENT_CAPPED, new a(D5.m0, null));
        this.m.put(B0.AUCTION_REQUEST, new a(D5.K0, null));
        this.m.put(B0.AUCTION_SUCCESS, new a(D5.M0, null));
        Map<B0, a> map2 = this.m;
        B0 b0 = B0.AUCTION_FAILED;
        D5 d5 = D5.L0;
        map2.put(b0, new a(d5, null));
        this.m.put(B0.AUCTION_FAILED_NO_CANDIDATES, new a(d5, null));
        this.m.put(B0.AUCTION_REQUEST_WATERFALL, new a(D5.O0, null));
        this.m.put(B0.AUCTION_RESULT_WATERFALL, new a(D5.P0, null));
        this.m.put(B0.INIT_SUCCESS, new a(null, null));
        this.m.put(B0.INIT_FAILED, new a(null, null));
        this.m.put(B0.AD_VISIBLE, new a(null, D5.B0));
        this.m.put(B0.AD_OPENED, new a(null, D5.b0));
        this.m.put(B0.AD_CLOSED, new a(null, D5.y0));
        this.m.put(B0.AD_STARTED, new a(null, D5.z0));
        this.m.put(B0.AD_ENDED, new a(null, D5.A0));
        this.m.put(B0.AD_CLICKED, new a(D5.r0, D5.c0));
        this.m.put(B0.AD_INFO_CHANGED, new a(D5.s0, null));
        this.m.put(B0.AD_REWARDED, new a(null, D5.d0));
        this.m.put(B0.AD_AVAILABILITY_CHANGED_TRUE, new a(D5.o0, D5.C0));
        this.m.put(B0.AD_AVAILABILITY_CHANGED_FALSE, new a(D5.p0, D5.D0));
        this.m.put(B0.LOAD_AD, new a(D5.X, D5.Y));
        this.m.put(B0.LOAD_AD_SUCCESS, new a(D5.a0, D5.Z));
        this.m.put(B0.LOAD_AD_FAILED, new a(null, D5.v0));
        this.m.put(B0.LOAD_AD_FAILED_WITH_REASON, new a(D5.J0, D5.H0));
        this.m.put(B0.LOAD_AD_NO_FILL, new a(null, D5.I0));
        this.m.put(B0.SHOW_AD, new a(D5.j0, D5.w0));
        this.m.put(B0.SHOW_AD_CHANCE, new a(null, D5.E0));
        this.m.put(B0.SHOW_AD_FAILED, new a(D5.q0, D5.x0));
        this.m.put(B0.AD_FORMAT_CAPPED, new a(D5.N0, null));
        this.m.put(B0.COLLECT_TOKEN, new a(D5.Q0, null));
        this.m.put(B0.COLLECT_TOKENS_COMPLETED, new a(D5.R0, null));
        this.m.put(B0.COLLECT_TOKENS_FAILED, new a(D5.S0, null));
        this.m.put(B0.INSTANCE_COLLECT_TOKEN, new a(D5.e0, null));
        Map<B0, a> map3 = this.m;
        B0 b02 = B0.INSTANCE_COLLECT_TOKEN_SUCCESS;
        D5 d52 = D5.f0;
        map3.put(b02, new a(d52, d52));
        Map<B0, a> map4 = this.m;
        B0 b03 = B0.INSTANCE_COLLECT_TOKEN_FAILED;
        D5 d53 = D5.g0;
        map4.put(b03, new a(d53, d53));
        Map<B0, a> map5 = this.m;
        B0 b04 = B0.INSTANCE_COLLECT_TOKEN_TIMED_OUT;
        D5 d54 = D5.h0;
        map5.put(b04, new a(d54, d54));
        this.m.put(B0.AD_READY_TRUE, new a(D5.t0, null));
        this.m.put(B0.AD_READY_FALSE, new a(D5.u0, null));
        this.m.put(B0.OPERATIONAL_LOAD_AD, new a(D5.Y0, null));
        this.m.put(B0.OPERATIONAL_LOAD_SUCCESS, new a(D5.Z0, null));
        this.m.put(B0.OPERATIONAL_LOAD_FAILED, new a(D5.a1, null));
        this.m.put(B0.OPERATIONAL_SET_CONFIGURATIONS, new a(D5.i0, null));
        this.m.put(B0.OPERATIONAL_GET_REWARD, new a(D5.b1, null));
        this.m.put(B0.PRELOAD_ADUNIT_INITIATED, new a(D5.c1, null));
        this.m.put(B0.PRELOAD_ADUNIT_FAILED, new a(D5.d1, null));
        this.m.put(B0.PRELOAD_ADUNIT_LOAD_SUCCESS, new a(D5.e1, null));
        Map<B0, a> map6 = this.m;
        B0 b05 = B0.TROUBLESHOOT_PROVIDER_SETTINGS_MISSING;
        D5 d55 = D5.j4;
        map6.put(b05, new a(d55, d55));
        Map<B0, a> map7 = this.m;
        B0 b06 = B0.TROUBLESHOOT_UNEXPECTED_INIT_SUCCESS;
        D5 d56 = D5.l4;
        map7.put(b06, new a(d56, d56));
        Map<B0, a> map8 = this.m;
        B0 b07 = B0.TROUBLESHOOT_UNEXPECTED_INIT_FAILED;
        D5 d57 = D5.m4;
        map8.put(b07, new a(d57, d57));
        Map<B0, a> map9 = this.m;
        B0 b08 = B0.TROUBLESHOOT_UNEXPECTED_AUCTION_SUCCESS;
        D5 d58 = D5.n4;
        map9.put(b08, new a(d58, d58));
        Map<B0, a> map10 = this.m;
        B0 b09 = B0.TROUBLESHOOT_UNEXPECTED_AUCTION_FAILED;
        D5 d59 = D5.o4;
        map10.put(b09, new a(d59, d59));
        Map<B0, a> map11 = this.m;
        B0 b010 = B0.TROUBLESHOOT_UNEXPECTED_LOAD_SUCCESS;
        D5 d510 = D5.p4;
        map11.put(b010, new a(d510, d510));
        Map<B0, a> map12 = this.m;
        B0 b011 = B0.TROUBLESHOOT_UNEXPECTED_LOAD_FAILED;
        D5 d511 = D5.q4;
        map12.put(b011, new a(d511, d511));
        Map<B0, a> map13 = this.m;
        B0 b012 = B0.TROUBLESHOOT_UNEXPECTED_SHOW_FAILED;
        D5 d512 = D5.t4;
        map13.put(b012, new a(d512, d512));
        Map<B0, a> map14 = this.m;
        B0 b013 = B0.TROUBLESHOOT_UNEXPECTED_TIMEOUT;
        D5 d513 = D5.s4;
        map14.put(b013, new a(d513, d513));
        Map<B0, a> map15 = this.m;
        B0 b014 = B0.TROUBLESHOOT_UNEXPECTED_CLOSED;
        D5 d514 = D5.u4;
        map15.put(b014, new a(d514, d514));
        Map<B0, a> map16 = this.m;
        B0 b015 = B0.TROUBLESHOOT_LOAD_FAILED;
        D5 d515 = D5.Y3;
        map16.put(b015, new a(d515, d515));
        Map<B0, a> map17 = this.m;
        B0 b016 = B0.TROUBLESHOOT_INTERNAL_ERROR;
        D5 d516 = D5.r4;
        map17.put(b016, new a(d516, d516));
        Map<B0, a> map18 = this.m;
        B0 b017 = B0.TROUBLESHOOT_ADAPTER_REPOSITORY_INTERNAL_ERROR;
        D5 d517 = D5.Q6;
        map18.put(b017, new a(d517, d517));
        Map<B0, a> map19 = this.m;
        B0 b018 = B0.TROUBLESHOOT_WATERFALL_OVERHEAD;
        D5 d518 = D5.K4;
        map19.put(b018, new a(d518, d518));
        this.m.put(B0.TROUBLESHOOT_NOTIFICATION_ERROR, new a(D5.J4, null));
        Map<B0, a> map20 = this.m;
        B0 b019 = B0.TROUBLESHOOT_AD_EXPIRED;
        D5 d519 = D5.P4;
        map20.put(b019, new a(d519, d519));
        this.m.put(B0.TROUBLESHOOT_LOAD, new a(D5.X3, null));
        this.m.put(B0.TROUBLESHOOT_LOAD_WHILE_LOADED, new a(D5.x4, null));
        this.m.put(B0.TROUBLESHOOT_LOAD_SUCCESS, new a(D5.v4, null));
        this.m.put(B0.TROUBLESHOOT_SHOW, new a(D5.A4, null));
        this.m.put(B0.TROUBLESHOOT_SHOW_SUCCESS, new a(D5.c4, null));
        this.m.put(B0.TROUBLESHOOT_SHOW_FAILED, new a(D5.y4, null));
        Map<B0, a> map21 = this.m;
        B0 b020 = B0.TROUBLESHOOT_ILLEGAL_STATE;
        D5 d520 = D5.b4;
        map21.put(b020, new a(d520, d520));
        this.m.put(B0.TROUBLESHOOT_AD_INFO_CHANGED, new a(D5.z4, null));
        this.m.put(B0.TROUBLESHOOT_DESTROY_INSTANCES_READY_TO_SHOW, new a(D5.d4, null));
        this.m.put(B0.TROUBLESHOOT_ILR_REVENUE, new a(D5.f4, null));
        this.m.put(B0.TROUBLESHOOT_SHOW_RECOVERY_INITIATED, new a(D5.e4, null));
        this.m.put(B0.TROUBLESHOOT_ILR_SUBSCRIBE, new a(D5.g4, null));
        this.m.put(B0.TROUBLESHOOT_ILR_UNSUBSCRIBE, new a(D5.h4, null));
        this.m.put(B0.TROUBLESHOOT_ILR_REVENUE_INSTANCE, new a(D5.i4, null));
    }

    public void f() {
        this.c = null;
        this.g = null;
        this.h = null;
        this.e = null;
        this.f = null;
        this.i = null;
        this.j = null;
        this.k = null;
    }

    public E0(IronSource.a aVar, b bVar, D0 d0, AbstractC3812r3 abstractC3812r3) {
        this.a = aVar;
        this.b = bVar;
        this.c = d0;
        this.d = abstractC3812r3 == null ? a(aVar) : abstractC3812r3;
        b();
        this.e = new C3582e9(this);
        this.f = new Cb(this);
        this.g = new C3714lg(this);
        this.h = new C3520b2(this);
        this.i = new N(this);
        this.j = new C3790pg(this);
        this.k = new C3470ad(this);
    }

    public void a(B0 b0, Map<String, Object> map) {
        a(b0, map, Calendar.getInstance().getTimeInMillis());
    }

    public void a(B0 b0, Map<String, Object> map, long j) {
        int iA = a(b0);
        if (-1 == iA) {
            return;
        }
        HashMap map2 = new HashMap();
        D0 d0 = this.c;
        if (d0 != null) {
            map2.putAll(d0.a(b0));
        }
        if (map != null && !map.isEmpty()) {
            map2.putAll(map);
        }
        this.d.a(new C5(iA, j, new JSONObject(map2)));
    }

    private int a(B0 b0) {
        try {
            if (IronSource.a.INTERSTITIAL.equals(this.a) && this.l.containsKey(b0)) {
                return this.l.get(b0).a(this.b);
            }
            if (IronSource.a.REWARDED_VIDEO.equals(this.a) && this.m.containsKey(b0)) {
                return this.m.get(b0).a(this.b);
            }
            if (IronSource.a.BANNER.equals(this.a) && this.n.containsKey(b0)) {
                return this.n.get(b0).a(this.b);
            }
            if (IronSource.a.NATIVE_AD.equals(this.a) && this.o.containsKey(b0)) {
                return this.o.get(b0).a(this.b);
            }
            return -1;
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return -1;
        }
    }

    public void a() {
        HashMap map = new HashMap();
        this.n = map;
        map.put(B0.INIT_STARTED, new a(D5.q6, null));
        this.n.put(B0.INIT_ENDED, new a(D5.r6, null));
        this.n.put(B0.PLACEMENT_CAPPED, new a(D5.U2, null));
        this.n.put(B0.AUCTION_REQUEST, new a(D5.V2, null));
        this.n.put(B0.AUCTION_SUCCESS, new a(D5.X2, null));
        Map<B0, a> map2 = this.n;
        B0 b0 = B0.AUCTION_FAILED;
        D5 d5 = D5.W2;
        map2.put(b0, new a(d5, null));
        this.n.put(B0.AUCTION_FAILED_NO_CANDIDATES, new a(d5, null));
        this.n.put(B0.AUCTION_REQUEST_WATERFALL, new a(D5.b3, null));
        this.n.put(B0.AUCTION_RESULT_WATERFALL, new a(D5.c3, null));
        this.n.put(B0.INIT_SUCCESS, new a(null, null));
        this.n.put(B0.INIT_FAILED, new a(null, null));
        this.n.put(B0.AD_OPENED, new a(D5.G2, D5.k2));
        this.n.put(B0.SHOW_AD_FAILED, new a(D5.H2, D5.l2));
        this.n.put(B0.AD_CLICKED, new a(D5.B2, D5.j2));
        this.n.put(B0.LOAD_AD, new a(D5.f2, D5.g2));
        this.n.put(B0.RELOAD_AD, new a(D5.m2, D5.n2));
        this.n.put(B0.LOAD_AD_SUCCESS, new a(D5.z2, D5.h2));
        this.n.put(B0.RELOAD_AD_SUCCESS, new a(D5.F2, D5.o2));
        this.n.put(B0.LOAD_AD_FAILED_WITH_REASON, new a(D5.A2, D5.L2));
        this.n.put(B0.RELOAD_AD_FAILED_WITH_REASON, new a(D5.J2, D5.M2));
        this.n.put(B0.LOAD_AD_NO_FILL, new a(null, D5.R2));
        this.n.put(B0.RELOAD_AD_NO_FILL, new a(null, D5.S2));
        this.n.put(B0.AD_FORMAT_CAPPED, new a(D5.Z2, null));
        this.n.put(B0.COLLECT_TOKEN, new a(D5.d3, null));
        this.n.put(B0.COLLECT_TOKENS_COMPLETED, new a(D5.e3, null));
        this.n.put(B0.COLLECT_TOKENS_FAILED, new a(D5.f3, null));
        this.n.put(B0.INSTANCE_COLLECT_TOKEN, new a(D5.q2, null));
        Map<B0, a> map3 = this.n;
        B0 b02 = B0.INSTANCE_COLLECT_TOKEN_SUCCESS;
        D5 d52 = D5.r2;
        map3.put(b02, new a(d52, d52));
        Map<B0, a> map4 = this.n;
        B0 b03 = B0.INSTANCE_COLLECT_TOKEN_FAILED;
        D5 d53 = D5.s2;
        map4.put(b03, new a(d53, d53));
        Map<B0, a> map5 = this.n;
        B0 b04 = B0.INSTANCE_COLLECT_TOKEN_TIMED_OUT;
        D5 d54 = D5.t2;
        map5.put(b04, new a(d54, d54));
        this.n.put(B0.DESTROY_AD, new a(D5.x2, D5.Q2));
        this.n.put(B0.SKIP_RELOAD_AD, new a(D5.I2, null));
        this.n.put(B0.AD_LEFT_APPLICATION, new a(D5.E2, D5.P2));
        this.n.put(B0.AD_PRESENT_SCREEN, new a(D5.C2, D5.N2));
        this.n.put(B0.AD_DISMISS_SCREEN, new a(D5.D2, D5.O2));
        this.n.put(B0.AD_VIEW_BOUND, new a(D5.K2, D5.T2));
        this.n.put(B0.PAUSE_AD, new a(D5.v2, null));
        this.n.put(B0.RESUME_AD, new a(D5.w2, null));
        this.n.put(B0.OPERATIONAL_SET_CONFIGURATIONS, new a(D5.u2, null));
        Map<B0, a> map6 = this.n;
        B0 b05 = B0.TROUBLESHOOT_PROVIDER_SETTINGS_MISSING;
        D5 d55 = D5.W5;
        map6.put(b05, new a(d55, d55));
        Map<B0, a> map7 = this.n;
        B0 b06 = B0.TROUBLESHOOT_UNEXPECTED_INIT_SUCCESS;
        D5 d56 = D5.Y5;
        map7.put(b06, new a(d56, d56));
        Map<B0, a> map8 = this.n;
        B0 b07 = B0.TROUBLESHOOT_UNEXPECTED_INIT_FAILED;
        D5 d57 = D5.Z5;
        map8.put(b07, new a(d57, d57));
        Map<B0, a> map9 = this.n;
        B0 b08 = B0.TROUBLESHOOT_UNEXPECTED_AUCTION_SUCCESS;
        D5 d58 = D5.a6;
        map9.put(b08, new a(d58, d58));
        Map<B0, a> map10 = this.n;
        B0 b09 = B0.TROUBLESHOOT_UNEXPECTED_AUCTION_FAILED;
        D5 d59 = D5.b6;
        map10.put(b09, new a(d59, d59));
        Map<B0, a> map11 = this.n;
        B0 b010 = B0.TROUBLESHOOT_UNEXPECTED_LOAD_SUCCESS;
        D5 d510 = D5.c6;
        map11.put(b010, new a(d510, d510));
        Map<B0, a> map12 = this.n;
        B0 b011 = B0.TROUBLESHOOT_UNEXPECTED_LOAD_FAILED;
        D5 d511 = D5.d6;
        map12.put(b011, new a(d511, d511));
        Map<B0, a> map13 = this.n;
        B0 b012 = B0.TROUBLESHOOT_UNEXPECTED_RELOAD_SUCCESS;
        D5 d512 = D5.g6;
        map13.put(b012, new a(d512, d512));
        Map<B0, a> map14 = this.n;
        B0 b013 = B0.TROUBLESHOOT_UNEXPECTED_RELOAD_FAILED;
        D5 d513 = D5.h6;
        map14.put(b013, new a(d513, d513));
        Map<B0, a> map15 = this.n;
        B0 b014 = B0.TROUBLESHOOT_UNEXPECTED_TIMEOUT;
        D5 d514 = D5.f6;
        map15.put(b014, new a(d514, d514));
        Map<B0, a> map16 = this.n;
        B0 b015 = B0.TROUBLESHOOT_UNEXPECTED_OPENED;
        D5 d515 = D5.i6;
        map16.put(b015, new a(d515, d515));
        Map<B0, a> map17 = this.n;
        B0 b016 = B0.TROUBLESHOOT_INTERNAL_ERROR;
        D5 d516 = D5.e6;
        map17.put(b016, new a(d516, d516));
        Map<B0, a> map18 = this.n;
        B0 b017 = B0.TROUBLESHOOT_ADAPTER_REPOSITORY_INTERNAL_ERROR;
        D5 d517 = D5.Q6;
        map18.put(b017, new a(d517, d517));
        Map<B0, a> map19 = this.n;
        B0 b018 = B0.TROUBLESHOOT_AUCTION_SUCCESSFUL_RECOVERY_ERROR;
        D5 d518 = D5.R6;
        map19.put(b018, new a(d518, d518));
        this.n.put(B0.TROUBLESHOOT_NOTIFICATION_ERROR, new a(D5.v6, null));
        this.n.put(B0.TROUBLESHOOT_BN_RELOAD_EXCEPTION, new a(D5.z6, null));
        this.n.put(B0.TROUBLESHOOT_IMPRESSION_TIMEOUT, new a(D5.j6, null));
        this.n.put(B0.TROUBLESHOOT_BANNER_REFRESH_TRIGGER_PAUSE, new a(D5.k6, null));
        this.n.put(B0.TROUBLESHOOT_BANNER_REFRESH_TRIGGER_RESUME, new a(D5.l6, null));
        Map<B0, a> map20 = this.n;
        B0 b019 = B0.TROUBLESHOOT_BANNER_REFRESH_TRANSITION;
        D5 d519 = D5.m6;
        map20.put(b019, new a(d519, d519));
        Map<B0, a> map21 = this.n;
        B0 b020 = B0.TROUBLESHOOT_BANNER_REFRESH_ANIMATED;
        D5 d520 = D5.n6;
        map21.put(b020, new a(d520, d520));
        Map<B0, a> map22 = this.n;
        B0 b021 = B0.TROUBLESHOOT_ILLEGAL_STATE;
        D5 d521 = D5.x6;
        map22.put(b021, new a(d521, d521));
        this.n.put(B0.TROUBLESHOOT_RELOAD, new a(D5.p6, null));
        Map<B0, a> map23 = this.n;
        B0 b022 = B0.TROUBLESHOOT_LOAD_SKIPPED;
        D5 d522 = D5.o6;
        map23.put(b022, new a(d522, d522));
        this.n.put(B0.TROUBLESHOOT_ILR_REVENUE, new a(D5.Q5, null));
        this.n.put(B0.TROUBLESHOOT_ILR_SUBSCRIBE, new a(D5.T5, null));
        this.n.put(B0.TROUBLESHOOT_ILR_UNSUBSCRIBE, new a(D5.U5, null));
        this.n.put(B0.TROUBLESHOOT_ILR_REVENUE_INSTANCE, new a(D5.V5, null));
    }
}
