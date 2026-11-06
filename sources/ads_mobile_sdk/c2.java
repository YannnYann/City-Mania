package ads_mobile_sdk;

import android.net.Uri;
import android.os.Bundle;
import com.google.common.base.Splitter;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.UnaryOperator;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
public abstract class c2 {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v111, types: [T, com.google.gson.JsonObject, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v5, types: [T, com.google.gson.JsonObject] */
    public static i2 a(JsonObject json, int i, Deferred deferred) {
        i2 i2Var;
        bc bcVar;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        String str;
        boolean z;
        boolean z2;
        JsonArray jsonArray;
        String str2;
        boolean z3;
        String str3;
        boolean z4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        String str4;
        String str5;
        ArrayList arrayList7;
        String str6;
        ArrayList arrayList8;
        String str7;
        ArrayList arrayList9;
        String str8;
        ArrayList arrayList10;
        String str9;
        String str10;
        String asString;
        String str11;
        ArrayList arrayList11;
        ArrayList arrayList12;
        ArrayList arrayList13;
        String str12;
        ga2 ga2Var;
        Ref$ObjectRef ref$ObjectRef;
        ArrayList arrayList14;
        ArrayList arrayList15;
        ArrayList arrayList16;
        ArrayList arrayList17;
        ArrayList arrayList18;
        ArrayList arrayList19;
        ArrayList arrayList20;
        ArrayList arrayList21;
        ArrayList arrayList22;
        JsonArray jsonArrayE;
        Intrinsics.checkNotNullParameter(json, "json");
        ds1 ds1Var = ds1.a;
        try {
            ArrayList arrayList23 = new ArrayList();
            bc bcVar2 = bc.b;
            ArrayList arrayList24 = new ArrayList();
            ArrayList arrayList25 = new ArrayList();
            ArrayList arrayList26 = new ArrayList();
            e2 e2Var = e2.d;
            ArrayList arrayList27 = new ArrayList();
            ArrayList arrayList28 = new ArrayList();
            ArrayList arrayList29 = new ArrayList();
            ArrayList arrayList30 = new ArrayList();
            ArrayList arrayList31 = new ArrayList();
            i2Var = null;
            try {
                ArrayList arrayList32 = new ArrayList();
                ArrayList arrayList33 = new ArrayList();
                ArrayList arrayList34 = new ArrayList();
                ArrayList arrayList35 = new ArrayList();
                ArrayList arrayList36 = arrayList33;
                ArrayList arrayList37 = new ArrayList();
                ArrayList arrayList38 = new ArrayList();
                ArrayList arrayList39 = new ArrayList();
                ArrayList arrayList40 = arrayList32;
                final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                ref$ObjectRef2.element = new JsonObject();
                JsonObject jsonObject = new JsonObject();
                JsonObject jsonObject2 = new JsonObject();
                Duration.Companion companion = Duration.Companion;
                long jM2911getZEROUwyO8pc = companion.m2911getZEROUwyO8pc();
                dg2 dg2Var = new dg2(cg2.c, xh2.d, false, "", "");
                h2 h2Var = h2.d;
                long jM2911getZEROUwyO8pc2 = companion.m2911getZEROUwyO8pc();
                JsonObject jsonObject3 = new JsonObject();
                ArrayList arrayList41 = new ArrayList();
                Bundle bundle = Bundle.EMPTY;
                o93 o93Var = new o93();
                st2 st2Var = st2.c;
                JsonObject jsonObject4 = new JsonObject();
                long jM2911getZEROUwyO8pc3 = companion.m2911getZEROUwyO8pc();
                JsonObject jsonObject5 = new JsonObject();
                String str13 = "";
                bc bcVar3 = bcVar2;
                e2 e2Var2 = e2Var;
                JsonObject jsonObject6 = jsonObject5;
                long duration = jM2911getZEROUwyO8pc;
                dg2 dg2Var2 = dg2Var;
                long j = jM2911getZEROUwyO8pc2;
                JsonObject jsonObject7 = jsonObject3;
                Bundle bundle2 = bundle;
                o93 o93Var2 = o93Var;
                st2 st2Var2 = st2Var;
                JsonObject jsonObject8 = jsonObject4;
                long j2 = jM2911getZEROUwyO8pc3;
                ArrayList arrayList42 = arrayList38;
                String str14 = str13;
                String str15 = str14;
                String str16 = str15;
                String str17 = str16;
                String str18 = str17;
                String str19 = str18;
                String str20 = str19;
                String str21 = str20;
                String str22 = str21;
                String str23 = str22;
                String str24 = str23;
                String str25 = str24;
                String str26 = str25;
                String str27 = str26;
                String str28 = str27;
                double d = 0.0d;
                String str29 = null;
                vc1 vc1Var = null;
                String str30 = null;
                JsonArray jsonArray2 = null;
                l63 l63Var = null;
                qb2 qb2Var = null;
                qm3 qm3Var = null;
                uo2 uo2Var = null;
                ga2 ga2Var2 = null;
                String str31 = null;
                String str32 = null;
                String str33 = null;
                boolean z5 = false;
                boolean z6 = false;
                boolean z7 = false;
                boolean z8 = false;
                boolean z9 = false;
                int i2 = -1;
                boolean z10 = false;
                boolean z11 = false;
                boolean z12 = false;
                boolean z13 = false;
                boolean z14 = false;
                boolean z15 = false;
                boolean z16 = false;
                boolean z17 = false;
                boolean z18 = false;
                boolean z19 = false;
                boolean z20 = false;
                boolean z21 = false;
                boolean z22 = false;
                int i3 = 0;
                boolean z23 = false;
                String str34 = "ping_strategy";
                String str35 = "json";
                JsonObject jsonObject9 = jsonObject2;
                JsonObject jsonObject10 = jsonObject;
                String str36 = str28;
                String str37 = str36;
                String str38 = str37;
                xc xcVar = null;
                ArrayList arrayList43 = arrayList39;
                boolean z24 = false;
                for (Map.Entry<String, JsonElement> entry : json.entrySet()) {
                    Intrinsics.checkNotNull(entry);
                    String key = entry.getKey();
                    ArrayList arrayList44 = arrayList34;
                    JsonElement value = entry.getValue();
                    if (key != null) {
                        arrayList2 = arrayList30;
                        arrayList3 = arrayList31;
                        switch (key.hashCode()) {
                            case -2138196627:
                                arrayList = arrayList29;
                                str6 = str16;
                                str4 = str20;
                                z4 = z9;
                                str3 = str22;
                                z3 = z12;
                                arrayList7 = arrayList36;
                                str2 = str30;
                                jsonArray = jsonArray2;
                                z2 = z15;
                                z = z16;
                                str = str24;
                                arrayList4 = arrayList28;
                                arrayList8 = arrayList43;
                                arrayList5 = arrayList37;
                                str7 = str14;
                                str5 = str19;
                                arrayList6 = arrayList24;
                                arrayList9 = arrayList42;
                                str8 = str35;
                                arrayList10 = arrayList41;
                                str10 = str13;
                                if (key.equals("ad_source_instance_name")) {
                                    String asString2 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString2, "getAsString(...)");
                                    Unit unit = Unit.INSTANCE;
                                    str18 = asString2;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    Splitter splitter = f01.a;
                                    f01.a(new b2(key));
                                    Unit unit2 = Unit.INSTANCE;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList452 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                break;
                            case -1980587809:
                                arrayList = arrayList29;
                                str6 = str16;
                                str4 = str20;
                                z4 = z9;
                                str3 = str22;
                                z3 = z12;
                                arrayList7 = arrayList36;
                                str2 = str30;
                                jsonArray = jsonArray2;
                                z2 = z15;
                                z = z16;
                                str = str24;
                                arrayList4 = arrayList28;
                                arrayList8 = arrayList43;
                                arrayList5 = arrayList37;
                                str7 = str14;
                                str5 = str19;
                                arrayList6 = arrayList24;
                                arrayList9 = arrayList42;
                                str8 = str35;
                                arrayList10 = arrayList41;
                                str10 = str13;
                                if (key.equals("debug_signals")) {
                                    JsonObject asJsonObject = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                                    Unit unit3 = Unit.INSTANCE;
                                    jsonObject10 = asJsonObject;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList4522 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    Splitter splitter2 = f01.a;
                                    f01.a(new b2(key));
                                    Unit unit22 = Unit.INSTANCE;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                break;
                            case -1965512151:
                                String str39 = str35;
                                arrayList10 = arrayList41;
                                str11 = str39;
                                arrayList = arrayList29;
                                str6 = str16;
                                str4 = str20;
                                z4 = z9;
                                str3 = str22;
                                z3 = z12;
                                arrayList7 = arrayList36;
                                str2 = str30;
                                jsonArray = jsonArray2;
                                z2 = z15;
                                z = z16;
                                str = str24;
                                arrayList4 = arrayList28;
                                arrayList8 = arrayList43;
                                arrayList5 = arrayList37;
                                str7 = str14;
                                str5 = str19;
                                arrayList6 = arrayList24;
                                arrayList9 = arrayList42;
                                if (key.equals("omid_settings")) {
                                    JsonObject asJsonObject2 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject2, "getAsJsonObject(...)");
                                    Intrinsics.checkNotNullParameter(asJsonObject2, str11);
                                    int iA = ds1.a(asJsonObject2, "media_type", -1);
                                    cg2 cg2Var = iA != 0 ? iA != 1 ? cg2.c : cg2.a : cg2.b;
                                    String str40 = str13;
                                    dg2 dg2Var3 = new dg2(cg2Var, bg2.a[cg2Var.ordinal()] == 1 ? xh2.d : xh2.c, ds1.a(asJsonObject2, "javascript_session_service_enabled", true), ds1.a(asJsonObject2, "omid_partner_name", str40), ds1.a(asJsonObject2, "omid_html", str40));
                                    Unit unit4 = Unit.INSTANCE;
                                    str13 = str40;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str11;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    dg2Var2 = dg2Var3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = str5;
                                    str14 = str7;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4;
                                    str24 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    arrayList29 = arrayList;
                                } else {
                                    str8 = str11;
                                    str10 = str13;
                                    Splitter splitter22 = f01.a;
                                    f01.a(new b2(key));
                                    Unit unit222 = Unit.INSTANCE;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList452222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                break;
                            case -1964744830:
                                String str41 = str35;
                                arrayList10 = arrayList41;
                                str11 = str41;
                                arrayList = arrayList29;
                                str6 = str16;
                                str4 = str20;
                                z4 = z9;
                                str3 = str22;
                                z3 = z12;
                                arrayList7 = arrayList36;
                                str2 = str30;
                                jsonArray = jsonArray2;
                                z2 = z15;
                                z = z16;
                                str = str24;
                                arrayList4 = arrayList28;
                                arrayList8 = arrayList43;
                                arrayList5 = arrayList37;
                                str7 = str14;
                                str5 = str19;
                                arrayList6 = arrayList24;
                                arrayList9 = arrayList42;
                                if (key.equals("offline_ad_config")) {
                                    JsonObject asJsonObject3 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject3, "getAsJsonObject(...)");
                                    qb2 qb2VarA = nb2.a(asJsonObject3);
                                    Unit unit5 = Unit.INSTANCE;
                                    qb2Var = qb2VarA;
                                    str8 = str11;
                                    asString = str5;
                                    str10 = str13;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList4522222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    str8 = str11;
                                    str10 = str13;
                                    Splitter splitter222 = f01.a;
                                    f01.a(new b2(key));
                                    Unit unit2222 = Unit.INSTANCE;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                break;
                            case -1882692970:
                                String str42 = str35;
                                arrayList10 = arrayList41;
                                str11 = str42;
                                arrayList = arrayList29;
                                str6 = str16;
                                str4 = str20;
                                z4 = z9;
                                str3 = str22;
                                z3 = z12;
                                arrayList7 = arrayList36;
                                str2 = str30;
                                jsonArray = jsonArray2;
                                z2 = z15;
                                z = z16;
                                str = str24;
                                arrayList4 = arrayList28;
                                arrayList8 = arrayList43;
                                arrayList5 = arrayList37;
                                str7 = str14;
                                str5 = str19;
                                arrayList6 = arrayList24;
                                arrayList9 = arrayList42;
                                if (key.equals("swipeable_interstitial_ad_config")) {
                                    JsonObject asJsonObject4 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject4, "getAsJsonObject(...)");
                                    qm3 qm3VarA = pm3.a(asJsonObject4);
                                    Unit unit6 = Unit.INSTANCE;
                                    qm3Var = qm3VarA;
                                    str8 = str11;
                                    asString = str5;
                                    str10 = str13;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList452222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    str8 = str11;
                                    str10 = str13;
                                    Splitter splitter2222 = f01.a;
                                    f01.a(new b2(key));
                                    Unit unit22222 = Unit.INSTANCE;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList4522222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                break;
                            case -1843156475:
                                String str43 = str35;
                                arrayList10 = arrayList41;
                                str11 = str43;
                                arrayList = arrayList29;
                                str6 = str16;
                                str4 = str20;
                                z4 = z9;
                                str3 = str22;
                                z3 = z12;
                                arrayList7 = arrayList36;
                                str2 = str30;
                                jsonArray = jsonArray2;
                                z2 = z15;
                                z = z16;
                                str = str24;
                                arrayList4 = arrayList28;
                                arrayList8 = arrayList43;
                                arrayList5 = arrayList37;
                                str7 = str14;
                                str5 = str19;
                                arrayList6 = arrayList24;
                                arrayList9 = arrayList42;
                                if (key.equals("is_consent")) {
                                    boolean asBoolean = value.getAsBoolean();
                                    Unit unit7 = Unit.INSTANCE;
                                    z22 = asBoolean;
                                    str8 = str11;
                                    asString = str5;
                                    str10 = str13;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                str8 = str11;
                                str10 = str13;
                                Splitter splitter22222 = f01.a;
                                f01.a(new b2(key));
                                Unit unit222222 = Unit.INSTANCE;
                                asString = str5;
                                str14 = str7;
                                str9 = str;
                                z16 = z;
                                z15 = z2;
                                jsonArray2 = jsonArray;
                                str30 = str2;
                                z12 = z3;
                                str22 = str3;
                                z9 = z4;
                                str20 = str4;
                                str16 = str6;
                                ArrayList arrayList452222222222 = arrayList4;
                                str24 = str9;
                                arrayList37 = arrayList5;
                                arrayList43 = arrayList8;
                                arrayList28 = arrayList452222222222;
                                str13 = str10;
                                arrayList36 = arrayList7;
                                arrayList41 = arrayList10;
                                str35 = str8;
                                arrayList29 = arrayList;
                                arrayList34 = arrayList44;
                                arrayList30 = arrayList2;
                                arrayList31 = arrayList3;
                                arrayList42 = arrayList9;
                                arrayList24 = arrayList6;
                                str19 = asString;
                                break;
                            case -1840512279:
                                String str44 = str35;
                                arrayList10 = arrayList41;
                                arrayList = arrayList29;
                                str6 = str16;
                                str4 = str20;
                                z4 = z9;
                                str3 = str22;
                                z3 = z12;
                                str2 = str30;
                                jsonArray = jsonArray2;
                                z2 = z15;
                                z = z16;
                                str = str24;
                                arrayList4 = arrayList28;
                                arrayList8 = arrayList43;
                                arrayList5 = arrayList37;
                                str7 = str14;
                                str5 = str19;
                                arrayList6 = arrayList24;
                                arrayList9 = arrayList42;
                                if (key.equals("presentation_urls")) {
                                    ds1 ds1Var2 = ds1.a;
                                    JsonArray asJsonArray = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray, "getAsJsonArray(...)");
                                    int i4 = 0;
                                    for (JsonElement jsonElement : asJsonArray) {
                                        int i5 = i4 + 1;
                                        if (i4 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement2 = jsonElement;
                                        Intrinsics.checkNotNull(jsonElement2);
                                        String asString3 = jsonElement2.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString3, "getAsString(...)");
                                        Uri uri = Uri.parse(asString3);
                                        if (uri != null) {
                                            arrayList11 = arrayList36;
                                            arrayList11.add(uri);
                                            Unit unit8 = Unit.INSTANCE;
                                        } else {
                                            arrayList11 = arrayList36;
                                        }
                                        arrayList36 = arrayList11;
                                        i4 = i5;
                                    }
                                    arrayList7 = arrayList36;
                                    Unit unit9 = Unit.INSTANCE;
                                    str8 = str44;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList4522222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    str8 = str44;
                                    str10 = str13;
                                    arrayList7 = arrayList36;
                                    Splitter splitter222222 = f01.a;
                                    f01.a(new b2(key));
                                    Unit unit2222222 = Unit.INSTANCE;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                break;
                            case -1828733410:
                                arrayList12 = arrayList40;
                                if (key.equals("network_ping_config")) {
                                    Intrinsics.checkNotNull(value);
                                    String str45 = str35;
                                    Intrinsics.checkNotNullParameter(value, str45);
                                    if (value.isJsonObject()) {
                                        arrayList10 = arrayList41;
                                        arrayList13 = arrayList37;
                                        str12 = str34;
                                        if (value.getAsJsonObject().has(str12)) {
                                            JsonElement jsonElement3 = value.getAsJsonObject().get(str12);
                                            if (jsonElement3.isJsonObject()) {
                                                JsonObject asJsonObject5 = jsonElement3.getAsJsonObject();
                                                Intrinsics.checkNotNullExpressionValue(asJsonObject5, "getAsJsonObject(...)");
                                                Intrinsics.checkNotNullParameter(asJsonObject5, str45);
                                                str34 = str12;
                                                ref$ObjectRef = ref$ObjectRef2;
                                                ga2Var = new ga2(new ha2(ds1.a(asJsonObject5, "max_attempts", 1), ds1.a(asJsonObject5, "initial_backoff_ms", 0), ds1.a(asJsonObject5, "buffer_after_max_attempts", false), ds1.a(asJsonObject5, "backoff_multiplier", 1.0d)));
                                            }
                                            Unit unit10 = Unit.INSTANCE;
                                            ArrayList arrayList46 = arrayList42;
                                            str8 = str45;
                                            asString = str19;
                                            arrayList6 = arrayList24;
                                            arrayList9 = arrayList46;
                                            ga2Var2 = ga2Var;
                                            str10 = str13;
                                            str9 = str24;
                                            ref$ObjectRef2 = ref$ObjectRef;
                                            arrayList4 = arrayList28;
                                            arrayList = arrayList29;
                                            arrayList8 = arrayList43;
                                            arrayList5 = arrayList13;
                                            arrayList40 = arrayList12;
                                            arrayList7 = arrayList36;
                                            ArrayList arrayList452222222222222 = arrayList4;
                                            str24 = str9;
                                            arrayList37 = arrayList5;
                                            arrayList43 = arrayList8;
                                            arrayList28 = arrayList452222222222222;
                                            str13 = str10;
                                            arrayList36 = arrayList7;
                                            arrayList41 = arrayList10;
                                            str35 = str8;
                                            arrayList29 = arrayList;
                                            arrayList34 = arrayList44;
                                            arrayList30 = arrayList2;
                                            arrayList31 = arrayList3;
                                            arrayList42 = arrayList9;
                                            arrayList24 = arrayList6;
                                            str19 = asString;
                                            break;
                                        }
                                    } else {
                                        arrayList10 = arrayList41;
                                        arrayList13 = arrayList37;
                                        str12 = str34;
                                    }
                                    str34 = str12;
                                    ref$ObjectRef = ref$ObjectRef2;
                                    ga2Var = null;
                                    Unit unit102 = Unit.INSTANCE;
                                    ArrayList arrayList462 = arrayList42;
                                    str8 = str45;
                                    asString = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList462;
                                    ga2Var2 = ga2Var;
                                    str10 = str13;
                                    str9 = str24;
                                    ref$ObjectRef2 = ref$ObjectRef;
                                    arrayList4 = arrayList28;
                                    arrayList = arrayList29;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList13;
                                    arrayList40 = arrayList12;
                                    arrayList7 = arrayList36;
                                    ArrayList arrayList4522222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                    arrayList40 = arrayList12;
                                }
                                break;
                            case -1812055556:
                                arrayList12 = arrayList40;
                                if (key.equals("play_prewarm_options")) {
                                    JsonObject asJsonObject6 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject6, "getAsJsonObject(...)");
                                    uo2 uo2VarA = to2.a(asJsonObject6);
                                    Unit unit11 = Unit.INSTANCE;
                                    ArrayList arrayList47 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList47;
                                    uo2Var = uo2VarA;
                                    arrayList = arrayList29;
                                    arrayList40 = arrayList12;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                    arrayList40 = arrayList12;
                                }
                                break;
                            case -1785028569:
                                arrayList12 = arrayList40;
                                if (key.equals("parallel_key")) {
                                    String asString4 = value.getAsString();
                                    Unit unit12 = Unit.INSTANCE;
                                    ArrayList arrayList48 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList48;
                                    str30 = asString4;
                                    arrayList = arrayList29;
                                    arrayList40 = arrayList12;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                    arrayList40 = arrayList12;
                                }
                                break;
                            case -1776946669:
                                arrayList12 = arrayList40;
                                if (key.equals("ad_source_name")) {
                                    String asString5 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString5, "getAsString(...)");
                                    Unit unit13 = Unit.INSTANCE;
                                    ArrayList arrayList49 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList49;
                                    str16 = asString5;
                                    arrayList = arrayList29;
                                    arrayList40 = arrayList12;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                    arrayList40 = arrayList12;
                                }
                                break;
                            case -1732897806:
                                arrayList12 = arrayList40;
                                if (key.equals("post_click_lifecycle_interaction_macroed_params")) {
                                    String asString6 = value.getAsString();
                                    Unit unit14 = Unit.INSTANCE;
                                    ArrayList arrayList50 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList50;
                                    str32 = asString6;
                                    arrayList = arrayList29;
                                    arrayList40 = arrayList12;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                    arrayList40 = arrayList12;
                                }
                                break;
                            case -1620552059:
                                arrayList12 = arrayList40;
                                if (key.equals("preload_sort_type")) {
                                    rt2 rt2Var = st2.a;
                                    int asInt = value.getAsInt();
                                    rt2Var.getClass();
                                    st2 st2VarA = rt2.a(asInt);
                                    Unit unit15 = Unit.INSTANCE;
                                    ArrayList arrayList51 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList51;
                                    st2Var2 = st2VarA;
                                    arrayList = arrayList29;
                                    arrayList40 = arrayList12;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                arrayList = arrayList29;
                                arrayList40 = arrayList12;
                                break;
                            case -1620470467:
                                arrayList12 = arrayList40;
                                if (key.equals("backend_query_id")) {
                                    String asString7 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString7, "getAsString(...)");
                                    Unit unit16 = Unit.INSTANCE;
                                    arrayList4 = arrayList28;
                                    arrayList = arrayList29;
                                    arrayList40 = arrayList12;
                                    arrayList8 = arrayList43;
                                    arrayList7 = arrayList36;
                                    arrayList5 = arrayList37;
                                    str9 = asString7;
                                    asString = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                arrayList = arrayList29;
                                arrayList40 = arrayList12;
                                break;
                            case -1550155393:
                                if (key.equals("nofill_urls")) {
                                    ds1 ds1Var3 = ds1.a;
                                    JsonArray asJsonArray2 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray2, "getAsJsonArray(...)");
                                    int i6 = 0;
                                    for (JsonElement jsonElement4 : asJsonArray2) {
                                        int i7 = i6 + 1;
                                        if (i6 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement5 = jsonElement4;
                                        Intrinsics.checkNotNull(jsonElement5);
                                        String asString8 = jsonElement5.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString8, "getAsString(...)");
                                        Uri uri2 = Uri.parse(asString8);
                                        if (uri2 != null) {
                                            arrayList14 = arrayList40;
                                            arrayList14.add(uri2);
                                            Unit unit17 = Unit.INSTANCE;
                                        } else {
                                            arrayList14 = arrayList40;
                                        }
                                        arrayList40 = arrayList14;
                                        i6 = i7;
                                    }
                                    Unit unit18 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    arrayList40 = arrayList40;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -1538424578:
                                if (key.equals("enable_lock_screen_ad")) {
                                    boolean asBoolean2 = value.getAsBoolean();
                                    Unit unit19 = Unit.INSTANCE;
                                    ArrayList arrayList52 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList52;
                                    z9 = asBoolean2;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -1456307492:
                                if (key.equals("post_click_lifecycle_interaction_label")) {
                                    String asString9 = value.getAsString();
                                    Unit unit20 = Unit.INSTANCE;
                                    ArrayList arrayList53 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList53;
                                    str31 = asString9;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -1440104884:
                                if (key.equals("is_custom_close_blocked")) {
                                    boolean asBoolean3 = value.getAsBoolean();
                                    Unit unit21 = Unit.INSTANCE;
                                    ArrayList arrayList54 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList54;
                                    z12 = asBoolean3;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -1439500848:
                                if (key.equals(C3522b4.i.n)) {
                                    List list = i2.J0;
                                    String asString10 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString10, "getAsString(...)");
                                    int iA2 = a(asString10);
                                    Unit unit23 = Unit.INSTANCE;
                                    ArrayList arrayList55 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList55;
                                    i2 = iA2;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -1428969291:
                                arrayList15 = arrayList43;
                                if (key.equals("enable_omid")) {
                                    boolean asBoolean4 = value.getAsBoolean();
                                    Unit unit24 = Unit.INSTANCE;
                                    z13 = asBoolean4;
                                    arrayList5 = arrayList37;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    str9 = str24;
                                    arrayList6 = arrayList24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList15;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList5 = arrayList37;
                                    arrayList = arrayList29;
                                    str7 = str14;
                                    str6 = str16;
                                    str5 = str19;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList6 = arrayList24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList15;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    Splitter splitter2222222 = f01.a;
                                    f01.a(new b2(key));
                                    Unit unit22222222 = Unit.INSTANCE;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                break;
                            case -1406227629:
                                arrayList15 = arrayList43;
                                if (key.equals("buffer_click_url_as_ready_to_ping")) {
                                    boolean asBoolean5 = value.getAsBoolean();
                                    Unit unit25 = Unit.INSTANCE;
                                    z6 = asBoolean5;
                                    arrayList5 = arrayList37;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    str9 = str24;
                                    arrayList6 = arrayList24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList15;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList5 = arrayList37;
                                    arrayList = arrayList29;
                                    str7 = str14;
                                    str6 = str16;
                                    str5 = str19;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList6 = arrayList24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList15;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    Splitter splitter22222222 = f01.a;
                                    f01.a(new b2(key));
                                    Unit unit222222222 = Unit.INSTANCE;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList4522222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                break;
                            case -1403779768:
                                arrayList15 = arrayList43;
                                if (key.equals("showable_impression_type")) {
                                    g2 g2Var = h2.b;
                                    int asInt2 = value.getAsInt();
                                    g2Var.getClass();
                                    h2 h2VarA = g2.a(asInt2);
                                    Unit unit26 = Unit.INSTANCE;
                                    h2Var = h2VarA;
                                    arrayList5 = arrayList37;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    str9 = str24;
                                    arrayList6 = arrayList24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList15;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                arrayList5 = arrayList37;
                                arrayList = arrayList29;
                                str7 = str14;
                                str6 = str16;
                                str5 = str19;
                                str4 = str20;
                                z4 = z9;
                                str3 = str22;
                                z3 = z12;
                                arrayList7 = arrayList36;
                                str2 = str30;
                                jsonArray = jsonArray2;
                                z2 = z15;
                                z = z16;
                                str = str24;
                                arrayList6 = arrayList24;
                                arrayList4 = arrayList28;
                                arrayList8 = arrayList15;
                                arrayList9 = arrayList42;
                                str8 = str35;
                                arrayList10 = arrayList41;
                                str10 = str13;
                                Splitter splitter222222222 = f01.a;
                                f01.a(new b2(key));
                                Unit unit2222222222 = Unit.INSTANCE;
                                asString = str5;
                                str14 = str7;
                                str9 = str;
                                z16 = z;
                                z15 = z2;
                                jsonArray2 = jsonArray;
                                str30 = str2;
                                z12 = z3;
                                str22 = str3;
                                z9 = z4;
                                str20 = str4;
                                str16 = str6;
                                ArrayList arrayList452222222222222222222222222222222 = arrayList4;
                                str24 = str9;
                                arrayList37 = arrayList5;
                                arrayList43 = arrayList8;
                                arrayList28 = arrayList452222222222222222222222222222222;
                                str13 = str10;
                                arrayList36 = arrayList7;
                                arrayList41 = arrayList10;
                                str35 = str8;
                                arrayList29 = arrayList;
                                arrayList34 = arrayList44;
                                arrayList30 = arrayList2;
                                arrayList31 = arrayList3;
                                arrayList42 = arrayList9;
                                arrayList24 = arrayList6;
                                str19 = asString;
                                break;
                            case -1360811658:
                                if (key.equals("ad_sizes")) {
                                    ds1 ds1Var4 = ds1.a;
                                    JsonArray asJsonArray3 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray3, "getAsJsonArray(...)");
                                    int i8 = 0;
                                    for (JsonElement jsonElement6 : asJsonArray3) {
                                        int i9 = i8 + 1;
                                        if (i8 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement7 = jsonElement6;
                                        Intrinsics.checkNotNull(jsonElement7);
                                        JsonObject asJsonObject7 = jsonElement7.getAsJsonObject();
                                        Intrinsics.checkNotNullExpressionValue(asJsonObject7, "getAsJsonObject(...)");
                                        p2 p2VarA = o2.a(asJsonObject7);
                                        if (p2VarA != null) {
                                            arrayList16 = arrayList43;
                                            arrayList16.add(p2VarA);
                                            Unit unit27 = Unit.INSTANCE;
                                        } else {
                                            arrayList16 = arrayList43;
                                        }
                                        arrayList43 = arrayList16;
                                        i8 = i9;
                                    }
                                    ArrayList arrayList56 = arrayList43;
                                    Unit unit28 = Unit.INSTANCE;
                                    arrayList5 = arrayList37;
                                    arrayList = arrayList29;
                                    str7 = str14;
                                    str6 = str16;
                                    str5 = str19;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList6 = arrayList24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList56;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList4522222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -1306015996:
                                if (key.equals("adapters")) {
                                    ds1 ds1Var5 = ds1.a;
                                    JsonArray asJsonArray4 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray4, "getAsJsonArray(...)");
                                    int i10 = 0;
                                    for (JsonElement jsonElement8 : asJsonArray4) {
                                        int i11 = i10 + 1;
                                        if (i10 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement9 = jsonElement8;
                                        Intrinsics.checkNotNull(jsonElement9);
                                        String asString11 = jsonElement9.getAsString();
                                        if (asString11 != null) {
                                            arrayList17 = arrayList42;
                                            arrayList17.add(asString11);
                                            Unit unit29 = Unit.INSTANCE;
                                        } else {
                                            arrayList17 = arrayList42;
                                        }
                                        arrayList42 = arrayList17;
                                        i10 = i11;
                                    }
                                    ArrayList arrayList57 = arrayList42;
                                    Unit unit30 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    str6 = str16;
                                    str8 = str35;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList10 = arrayList41;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    str10 = str13;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList57;
                                    arrayList7 = arrayList36;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -1303332046:
                                arrayList18 = arrayList44;
                                if (key.equals("test_mode_enabled")) {
                                    boolean asBoolean6 = value.getAsBoolean();
                                    Unit unit31 = Unit.INSTANCE;
                                    ArrayList arrayList58 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList58;
                                    z18 = asBoolean6;
                                    arrayList = arrayList29;
                                    arrayList44 = arrayList18;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                    arrayList44 = arrayList18;
                                }
                                break;
                            case -1289032093:
                                arrayList18 = arrayList44;
                                if (key.equals(HandleInvocationsFromAdViewer.KEY_EXTRAS)) {
                                    JsonObject asJsonObject8 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject8, "getAsJsonObject(...)");
                                    Unit unit32 = Unit.INSTANCE;
                                    ArrayList arrayList59 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList59;
                                    jsonObject9 = asJsonObject8;
                                    arrayList = arrayList29;
                                    arrayList44 = arrayList18;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                    arrayList44 = arrayList18;
                                }
                                break;
                            case -1240082064:
                                arrayList18 = arrayList44;
                                if (key.equals("ad_event_value")) {
                                    JsonObject asJsonObject9 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject9, "getAsJsonObject(...)");
                                    xc xcVarA = wc.a(asJsonObject9);
                                    Unit unit33 = Unit.INSTANCE;
                                    ArrayList arrayList60 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList60;
                                    xcVar = xcVarA;
                                    arrayList = arrayList29;
                                    arrayList44 = arrayList18;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                arrayList = arrayList29;
                                arrayList44 = arrayList18;
                                break;
                            case -1234181075:
                                arrayList18 = arrayList44;
                                if (key.equals("allow_pub_rendered_attribution")) {
                                    boolean asBoolean7 = value.getAsBoolean();
                                    Unit unit34 = Unit.INSTANCE;
                                    ArrayList arrayList61 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList61;
                                    z5 = asBoolean7;
                                    arrayList = arrayList29;
                                    arrayList44 = arrayList18;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                arrayList = arrayList29;
                                arrayList44 = arrayList18;
                                break;
                            case -1168140544:
                                if (key.equals("presentation_error_urls")) {
                                    ds1 ds1Var6 = ds1.a;
                                    JsonArray asJsonArray5 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray5, "getAsJsonArray(...)");
                                    int i12 = 0;
                                    for (JsonElement jsonElement10 : asJsonArray5) {
                                        int i13 = i12 + 1;
                                        if (i12 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement11 = jsonElement10;
                                        Intrinsics.checkNotNull(jsonElement11);
                                        String asString12 = jsonElement11.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString12, "getAsString(...)");
                                        Uri uri3 = Uri.parse(asString12);
                                        if (uri3 != null) {
                                            arrayList19 = arrayList44;
                                            arrayList19.add(uri3);
                                            Unit unit35 = Unit.INSTANCE;
                                        } else {
                                            arrayList19 = arrayList44;
                                        }
                                        arrayList44 = arrayList19;
                                        i12 = i13;
                                    }
                                    Unit unit36 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    arrayList44 = arrayList44;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList4522222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -1152230954:
                                arrayList20 = arrayList2;
                                if (key.equals("ad_type")) {
                                    ac acVar = bc.a;
                                    String asString13 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString13, "getAsString(...)");
                                    String upperCase = asString13.toUpperCase(Locale.ROOT);
                                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                                    acVar.getClass();
                                    bc bcVarA = ac.a(upperCase);
                                    Unit unit37 = Unit.INSTANCE;
                                    ArrayList arrayList62 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList62;
                                    bcVar3 = bcVarA;
                                    arrayList = arrayList29;
                                    arrayList2 = arrayList20;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                    arrayList2 = arrayList20;
                                }
                                break;
                            case -1146534047:
                                arrayList20 = arrayList2;
                                if (key.equals("is_scroll_aware")) {
                                    boolean asBoolean8 = value.getAsBoolean();
                                    Unit unit38 = Unit.INSTANCE;
                                    ArrayList arrayList63 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList63;
                                    z14 = asBoolean8;
                                    arrayList = arrayList29;
                                    arrayList2 = arrayList20;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                }
                                arrayList = arrayList29;
                                arrayList2 = arrayList20;
                                break;
                            case -1115838944:
                                if (key.equals("fill_urls")) {
                                    ds1 ds1Var7 = ds1.a;
                                    JsonArray asJsonArray6 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray6, "getAsJsonArray(...)");
                                    int i14 = 0;
                                    for (JsonElement jsonElement12 : asJsonArray6) {
                                        int i15 = i14 + 1;
                                        if (i14 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement13 = jsonElement12;
                                        Intrinsics.checkNotNull(jsonElement13);
                                        String asString14 = jsonElement13.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString14, "getAsString(...)");
                                        Uri uri4 = Uri.parse(asString14);
                                        if (uri4 != null) {
                                            arrayList21 = arrayList2;
                                            arrayList21.add(uri4);
                                            Unit unit39 = Unit.INSTANCE;
                                        } else {
                                            arrayList21 = arrayList2;
                                        }
                                        arrayList2 = arrayList21;
                                        i14 = i15;
                                    }
                                    Unit unit40 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    arrayList2 = arrayList2;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList4522222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -1081936678:
                                if (key.equals("allocation_id")) {
                                    String asString15 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString15, "getAsString(...)");
                                    Unit unit41 = Unit.INSTANCE;
                                    ArrayList arrayList64 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList64;
                                    str36 = asString15;
                                    arrayList = arrayList29;
                                    arrayList3 = arrayList3;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                    arrayList3 = arrayList3;
                                }
                                break;
                            case -1079896384:
                                if (key.equals("ad_quality_urls")) {
                                    ds1 ds1Var8 = ds1.a;
                                    JsonArray asJsonArray7 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray7, "getAsJsonArray(...)");
                                    int i16 = 0;
                                    for (JsonElement jsonElement14 : asJsonArray7) {
                                        int i17 = i16 + 1;
                                        if (i16 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement15 = jsonElement14;
                                        Intrinsics.checkNotNull(jsonElement15);
                                        String asString16 = jsonElement15.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString16, "getAsString(...)");
                                        Uri uri5 = Uri.parse(asString16);
                                        if (uri5 != null) {
                                            arrayList22 = arrayList3;
                                            arrayList22.add(uri5);
                                            Unit unit42 = Unit.INSTANCE;
                                        } else {
                                            arrayList22 = arrayList3;
                                        }
                                        arrayList3 = arrayList22;
                                        i16 = i17;
                                    }
                                    Unit unit43 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    arrayList3 = arrayList3;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList452222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -1078050970:
                                if (key.equals("video_complete_urls")) {
                                    ds1 ds1Var9 = ds1.a;
                                    JsonArray asJsonArray8 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray8, "getAsJsonArray(...)");
                                    int i18 = 0;
                                    for (JsonElement jsonElement16 : asJsonArray8) {
                                        int i19 = i18 + 1;
                                        if (i18 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement17 = jsonElement16;
                                        Intrinsics.checkNotNull(jsonElement17);
                                        String asString17 = jsonElement17.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString17, "getAsString(...)");
                                        Uri uri6 = Uri.parse(asString17);
                                        if (uri6 != null) {
                                            arrayList29.add(uri6);
                                            Unit unit44 = Unit.INSTANCE;
                                        }
                                        i18 = i19;
                                    }
                                    Unit unit45 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -1051269058:
                                if (key.equals("active_view")) {
                                    String string = value.toString();
                                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                                    Unit unit46 = Unit.INSTANCE;
                                    ArrayList arrayList65 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList65;
                                    str14 = string;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -982608540:
                                if (key.equals("valid_from_timestamp")) {
                                    String asString18 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString18, "getAsString(...)");
                                    Unit unit47 = Unit.INSTANCE;
                                    ArrayList arrayList66 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList66;
                                    str26 = asString18;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -972056451:
                                if (key.equals("ad_source_instance_id")) {
                                    asString = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
                                    Unit unit48 = Unit.INSTANCE;
                                    ArrayList arrayList67 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList67;
                                    arrayList6 = arrayList24;
                                    arrayList = arrayList29;
                                    arrayList9 = arrayList42;
                                    arrayList7 = arrayList36;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -776859333:
                                if (key.equals("click_urls")) {
                                    ds1 ds1Var10 = ds1.a;
                                    JsonArray asJsonArray9 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray9, "getAsJsonArray(...)");
                                    int i20 = 0;
                                    for (JsonElement jsonElement18 : asJsonArray9) {
                                        int i21 = i20 + 1;
                                        if (i20 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement19 = jsonElement18;
                                        Intrinsics.checkNotNull(jsonElement19);
                                        String asString19 = jsonElement19.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString19, "getAsString(...)");
                                        Uri uri7 = Uri.parse(asString19);
                                        if (uri7 != null) {
                                            arrayList24.add(uri7);
                                            Unit unit49 = Unit.INSTANCE;
                                        }
                                        i20 = i21;
                                    }
                                    Unit unit50 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -544216775:
                                if (key.equals("safe_browsing")) {
                                    JsonObject asJsonObject10 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject10, "getAsJsonObject(...)");
                                    o93 o93VarA = n93.a(asJsonObject10);
                                    Unit unit51 = Unit.INSTANCE;
                                    ArrayList arrayList68 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList68;
                                    o93Var2 = o93VarA;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -437057161:
                                if (key.equals("imp_urls")) {
                                    ds1 ds1Var11 = ds1.a;
                                    JsonArray asJsonArray10 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray10, "getAsJsonArray(...)");
                                    int i22 = 0;
                                    for (JsonElement jsonElement20 : asJsonArray10) {
                                        int i23 = i22 + 1;
                                        if (i22 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement21 = jsonElement20;
                                        Intrinsics.checkNotNull(jsonElement21);
                                        String asString20 = jsonElement21.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString20, "getAsString(...)");
                                        Uri uri8 = Uri.parse(asString20);
                                        if (uri8 != null) {
                                            arrayList25.add(uri8);
                                            Unit unit52 = Unit.INSTANCE;
                                        }
                                        i22 = i23;
                                    }
                                    Unit unit53 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -404433734:
                                if (key.equals("rtb_native_required_assets")) {
                                    JsonObject asJsonObject11 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject11, "getAsJsonObject(...)");
                                    Unit unit54 = Unit.INSTANCE;
                                    ArrayList arrayList69 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList69;
                                    jsonObject7 = asJsonObject11;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -404326515:
                                if (key.equals("render_timeout_ms")) {
                                    Duration.Companion companion2 = Duration.Companion;
                                    duration = DurationKt.toDuration(value.getAsInt(), DurationUnit.MILLISECONDS);
                                    Unit unit55 = Unit.INSTANCE;
                                    ArrayList arrayList70 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList70;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -388807511:
                                if (key.equals("content_url")) {
                                    String asString21 = value.getAsString();
                                    Unit unit56 = Unit.INSTANCE;
                                    ArrayList arrayList71 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList71;
                                    str29 = asString21;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -213449460:
                                if (key.equals("force_disable_hardware_acceleration")) {
                                    boolean asBoolean9 = value.getAsBoolean();
                                    Unit unit57 = Unit.INSTANCE;
                                    ArrayList arrayList72 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList72;
                                    z8 = asBoolean9;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -213424028:
                                if (key.equals("watermark")) {
                                    String asString22 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString22, "getAsString(...)");
                                    Unit unit58 = Unit.INSTANCE;
                                    ArrayList arrayList73 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList73;
                                    str28 = asString22;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case -180214626:
                                if (key.equals("native_required_asset_viewability")) {
                                    boolean asBoolean10 = value.getAsBoolean();
                                    Unit unit59 = Unit.INSTANCE;
                                    ArrayList arrayList74 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList74;
                                    z7 = asBoolean10;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 3107:
                                if (key.equals("ad")) {
                                    JsonObject asJsonObject12 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject12, "getAsJsonObject(...)");
                                    vc1 vc1VarA = uc1.a(asJsonObject12, deferred);
                                    JsonObject jsonObject11 = vc1VarA.d;
                                    boolean z25 = (jsonObject11 == null || (jsonArrayE = ds1.e(jsonObject11, "slots")) == null || jsonArrayE.size() <= 0) ? false : true;
                                    Unit unit60 = Unit.INSTANCE;
                                    ArrayList arrayList75 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList75;
                                    vc1Var = vc1VarA;
                                    z20 = z25;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 3355:
                                if (key.equals(C3670j8.x)) {
                                    String asString23 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString23, "getAsString(...)");
                                    Unit unit61 = Unit.INSTANCE;
                                    ArrayList arrayList76 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList76;
                                    str21 = asString23;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 3076010:
                                if (key.equals("data")) {
                                    ?? asJsonObject13 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject13, "getAsJsonObject(...)");
                                    ref$ObjectRef2.element = asJsonObject13;
                                    Unit unit62 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 37109963:
                                if (key.equals("request_id")) {
                                    String asString24 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString24, "getAsString(...)");
                                    Unit unit63 = Unit.INSTANCE;
                                    ArrayList arrayList77 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList77;
                                    str22 = asString24;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 63195984:
                                if (key.equals("render_test_label")) {
                                    boolean asBoolean11 = value.getAsBoolean();
                                    Unit unit64 = Unit.INSTANCE;
                                    ArrayList arrayList78 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList78;
                                    z16 = asBoolean11;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 107433883:
                                if (key.equals("qdata")) {
                                    String asString25 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString25, "getAsString(...)");
                                    Unit unit65 = Unit.INSTANCE;
                                    ArrayList arrayList79 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList79;
                                    str23 = asString25;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 230323073:
                                if (key.equals("ad_load_urls")) {
                                    ds1 ds1Var12 = ds1.a;
                                    JsonArray asJsonArray11 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray11, "getAsJsonArray(...)");
                                    int i24 = 0;
                                    for (JsonElement jsonElement22 : asJsonArray11) {
                                        int i25 = i24 + 1;
                                        if (i24 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement23 = jsonElement22;
                                        Intrinsics.checkNotNull(jsonElement23);
                                        String asString26 = jsonElement23.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString26, "getAsString(...)");
                                        Uri uri9 = Uri.parse(asString26);
                                        if (uri9 != null) {
                                            arrayList26.add(uri9);
                                            Unit unit66 = Unit.INSTANCE;
                                        }
                                        i24 = i25;
                                    }
                                    Unit unit67 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 418392395:
                                if (key.equals("is_closable_area_disabled")) {
                                    boolean asBoolean12 = value.getAsBoolean();
                                    Unit unit68 = Unit.INSTANCE;
                                    ArrayList arrayList80 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList80;
                                    z10 = asBoolean12;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 542250332:
                                if (key.equals("consent_form_action_identifier")) {
                                    int asInt3 = value.getAsInt();
                                    Unit unit69 = Unit.INSTANCE;
                                    ArrayList arrayList81 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList81;
                                    i3 = asInt3;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 549176928:
                                if (key.equals("presentation_error_timeout_ms")) {
                                    Duration.Companion companion3 = Duration.Companion;
                                    long duration2 = DurationKt.toDuration(value.getAsInt(), DurationUnit.MILLISECONDS);
                                    Unit unit70 = Unit.INSTANCE;
                                    ArrayList arrayList82 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList82;
                                    arrayList = arrayList29;
                                    j = duration2;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 597473788:
                                if (key.equals("debug_dialog_string")) {
                                    String asString27 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString27, "getAsString(...)");
                                    Unit unit71 = Unit.INSTANCE;
                                    ArrayList arrayList83 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList83;
                                    str38 = asString27;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 639133141:
                                if (key.equals("response_info_extras_override")) {
                                    JsonObject jsonObjectA = ds1.a(value);
                                    if (jsonObjectA == null) {
                                        jsonObjectA = new JsonObject();
                                    }
                                    Unit unit72 = Unit.INSTANCE;
                                    ArrayList arrayList84 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList84;
                                    jsonObject6 = jsonObjectA;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 754887508:
                                if (key.equals("container_sizes")) {
                                    ds1 ds1Var13 = ds1.a;
                                    JsonArray asJsonArray12 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray12, "getAsJsonArray(...)");
                                    int i26 = 0;
                                    for (JsonElement jsonElement24 : asJsonArray12) {
                                        int i27 = i26 + 1;
                                        if (i26 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement25 = jsonElement24;
                                        Intrinsics.checkNotNull(jsonElement25);
                                        JsonObject asJsonObject14 = jsonElement25.getAsJsonObject();
                                        Intrinsics.checkNotNullExpressionValue(asJsonObject14, "getAsJsonObject(...)");
                                        p2 p2VarA2 = o2.a(asJsonObject14);
                                        if (p2VarA2 != null) {
                                            arrayList37.add(p2VarA2);
                                            Unit unit73 = Unit.INSTANCE;
                                        }
                                        i26 = i27;
                                    }
                                    Unit unit74 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 791122864:
                                if (key.equals("impression_type")) {
                                    d2 d2Var = e2.b;
                                    int asInt4 = value.getAsInt();
                                    d2Var.getClass();
                                    e2 e2VarA = d2.a(asInt4);
                                    Unit unit75 = Unit.INSTANCE;
                                    ArrayList arrayList85 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList85;
                                    e2Var2 = e2VarA;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 805095541:
                                if (key.equals("analytics_event_name_to_parameters_map")) {
                                    ds1 ds1Var14 = ds1.a;
                                    JsonObject asJsonObject15 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject15, "getAsJsonObject(...)");
                                    Bundle bundleB = ds1.b(asJsonObject15);
                                    Unit unit76 = Unit.INSTANCE;
                                    ArrayList arrayList86 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList86;
                                    bundle2 = bundleB;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1010584092:
                                if (key.equals("transaction_id")) {
                                    String asString28 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString28, "getAsString(...)");
                                    Unit unit77 = Unit.INSTANCE;
                                    ArrayList arrayList87 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList87;
                                    str25 = asString28;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1100650276:
                                if (key.equals("rewards")) {
                                    Intrinsics.checkNotNull(value);
                                    l63 l63VarA = m63.a(value);
                                    Unit unit78 = Unit.INSTANCE;
                                    ArrayList arrayList88 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList88;
                                    l63Var = l63VarA;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1141602460:
                                if (key.equals("adapter_response_info_key")) {
                                    String asString29 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString29, "getAsString(...)");
                                    Unit unit79 = Unit.INSTANCE;
                                    ArrayList arrayList89 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList89;
                                    str15 = asString29;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1186014765:
                                if (key.equals("cache_hit_urls")) {
                                    ds1 ds1Var15 = ds1.a;
                                    JsonArray asJsonArray13 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray13, "getAsJsonArray(...)");
                                    int i28 = 0;
                                    for (JsonElement jsonElement26 : asJsonArray13) {
                                        int i29 = i28 + 1;
                                        if (i28 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement27 = jsonElement26;
                                        Intrinsics.checkNotNull(jsonElement27);
                                        String asString30 = jsonElement27.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString30, "getAsString(...)");
                                        Uri uri10 = Uri.parse(asString30);
                                        if (uri10 != null) {
                                            arrayList41.add(uri10);
                                            Unit unit80 = Unit.INSTANCE;
                                        }
                                        i28 = i29;
                                    }
                                    Unit unit81 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1303622534:
                                if (key.equals("preload_sort_value")) {
                                    double asDouble = value.getAsDouble();
                                    Unit unit82 = Unit.INSTANCE;
                                    ArrayList arrayList90 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList90;
                                    arrayList = arrayList29;
                                    d = asDouble;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1320579560:
                                if (key.equals("base_creative_conversion_url")) {
                                    String asString31 = value.getAsString();
                                    Unit unit83 = Unit.INSTANCE;
                                    ArrayList arrayList91 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList91;
                                    str33 = asString31;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1321720943:
                                if (key.equals("allow_pub_owned_ad_view")) {
                                    boolean asBoolean13 = value.getAsBoolean();
                                    Unit unit84 = Unit.INSTANCE;
                                    ArrayList arrayList92 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList92;
                                    z24 = asBoolean13;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1364100807:
                                if (key.equals("recursive_request_parameters")) {
                                    JsonObject asJsonObject16 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject16, "getAsJsonObject(...)");
                                    Unit unit85 = Unit.INSTANCE;
                                    ArrayList arrayList93 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList93;
                                    jsonObject8 = asJsonObject16;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1422388341:
                                if (key.equals("is_collapsible")) {
                                    boolean asBoolean14 = value.getAsBoolean();
                                    Unit unit86 = Unit.INSTANCE;
                                    ArrayList arrayList94 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList94;
                                    z11 = asBoolean14;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1437255331:
                                if (key.equals("ad_source_id")) {
                                    String asString32 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString32, "getAsString(...)");
                                    Unit unit87 = Unit.INSTANCE;
                                    ArrayList arrayList95 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList95;
                                    str17 = asString32;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1556932485:
                                if (key.equals("post_click_lifecycle_monitoring_duration_ms")) {
                                    Duration.Companion companion4 = Duration.Companion;
                                    long duration3 = DurationKt.toDuration(value.getAsInt(), DurationUnit.MILLISECONDS);
                                    Unit unit88 = Unit.INSTANCE;
                                    ArrayList arrayList96 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList96;
                                    arrayList = arrayList29;
                                    j2 = duration3;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1565514205:
                                if (key.equals("adapter_only_third_party_impression")) {
                                    boolean asBoolean15 = value.getAsBoolean();
                                    Unit unit89 = Unit.INSTANCE;
                                    ArrayList arrayList97 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList97;
                                    z23 = asBoolean15;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1637553475:
                                if (key.equals("bid_response")) {
                                    String asString33 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString33, "getAsString(...)");
                                    Unit unit90 = Unit.INSTANCE;
                                    ArrayList arrayList98 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList98;
                                    str20 = asString33;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1638957285:
                                if (key.equals("video_start_urls")) {
                                    ds1 ds1Var16 = ds1.a;
                                    JsonArray asJsonArray14 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray14, "getAsJsonArray(...)");
                                    int i30 = 0;
                                    for (JsonElement jsonElement28 : asJsonArray14) {
                                        int i31 = i30 + 1;
                                        if (i30 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement29 = jsonElement28;
                                        Intrinsics.checkNotNull(jsonElement29);
                                        String asString34 = jsonElement29.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString34, "getAsString(...)");
                                        Uri uri11 = Uri.parse(asString34);
                                        if (uri11 != null) {
                                            arrayList27.add(uri11);
                                            Unit unit91 = Unit.INSTANCE;
                                        }
                                        i30 = i31;
                                    }
                                    Unit unit92 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1686319423:
                                if (key.equals("ad_network_class_name")) {
                                    String asString35 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString35, "getAsString(...)");
                                    Unit unit93 = Unit.INSTANCE;
                                    ArrayList arrayList99 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList99;
                                    str37 = asString35;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1688341040:
                                if (key.equals("video_reward_urls")) {
                                    ds1 ds1Var17 = ds1.a;
                                    JsonArray asJsonArray15 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray15, "getAsJsonArray(...)");
                                    int i32 = 0;
                                    for (JsonElement jsonElement30 : asJsonArray15) {
                                        int i33 = i32 + 1;
                                        if (i32 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement31 = jsonElement30;
                                        Intrinsics.checkNotNull(jsonElement31);
                                        String asString36 = jsonElement31.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString36, "getAsString(...)");
                                        Uri uri12 = Uri.parse(asString36);
                                        if (uri12 != null) {
                                            arrayList28.add(uri12);
                                            Unit unit94 = Unit.INSTANCE;
                                        }
                                        i32 = i33;
                                    }
                                    Unit unit95 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1799285870:
                                if (key.equals("use_third_party_container_height")) {
                                    boolean asBoolean16 = value.getAsBoolean();
                                    Unit unit96 = Unit.INSTANCE;
                                    ArrayList arrayList100 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList100;
                                    z19 = asBoolean16;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1839650832:
                                if (key.equals("renderers")) {
                                    ds1 ds1Var18 = ds1.a;
                                    JsonArray asJsonArray16 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray16, "getAsJsonArray(...)");
                                    int i34 = 0;
                                    for (JsonElement jsonElement32 : asJsonArray16) {
                                        int i35 = i34 + 1;
                                        if (i34 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement33 = jsonElement32;
                                        Intrinsics.checkNotNull(jsonElement33);
                                        String asString37 = jsonElement33.getAsString();
                                        if (asString37 != null) {
                                            arrayList23.add(asString37);
                                            Unit unit97 = Unit.INSTANCE;
                                        }
                                        i34 = i35;
                                    }
                                    Unit unit98 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 1875425491:
                                if (key.equals("is_analytics_logging_enabled")) {
                                    boolean asBoolean17 = value.getAsBoolean();
                                    Unit unit99 = Unit.INSTANCE;
                                    ArrayList arrayList101 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList101;
                                    z17 = asBoolean17;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 2004337096:
                                if (key.equals("recursive_signal_collection")) {
                                    JsonArray asJsonArray17 = value.getAsJsonArray();
                                    Unit unit100 = Unit.INSTANCE;
                                    ArrayList arrayList102 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList102;
                                    jsonArray2 = asJsonArray17;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 2068142375:
                                if (key.equals("rule_line_external_id")) {
                                    String asString38 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString38, "getAsString(...)");
                                    Unit unit101 = Unit.INSTANCE;
                                    ArrayList arrayList103 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList103;
                                    str27 = asString38;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 2072888499:
                                if (key.equals("manual_tracking_urls")) {
                                    ds1 ds1Var19 = ds1.a;
                                    JsonArray asJsonArray18 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray18, "getAsJsonArray(...)");
                                    int i36 = 0;
                                    for (JsonElement jsonElement34 : asJsonArray18) {
                                        int i37 = i36 + 1;
                                        if (i36 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement35 = jsonElement34;
                                        Intrinsics.checkNotNull(jsonElement35);
                                        String asString39 = jsonElement35.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString39, "getAsString(...)");
                                        Uri uri13 = Uri.parse(asString39);
                                        if (uri13 != null) {
                                            arrayList35.add(uri13);
                                            Unit unit103 = Unit.INSTANCE;
                                        }
                                        i36 = i37;
                                    }
                                    Unit unit104 = Unit.INSTANCE;
                                    arrayList = arrayList29;
                                    str6 = str16;
                                    str4 = str20;
                                    z4 = z9;
                                    str3 = str22;
                                    z3 = z12;
                                    arrayList7 = arrayList36;
                                    str2 = str30;
                                    jsonArray = jsonArray2;
                                    z2 = z15;
                                    z = z16;
                                    str = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str7 = str14;
                                    str5 = str19;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    asString = str5;
                                    str14 = str7;
                                    str9 = str;
                                    z16 = z;
                                    z15 = z2;
                                    jsonArray2 = jsonArray;
                                    str30 = str2;
                                    z12 = z3;
                                    str22 = str3;
                                    z9 = z4;
                                    str20 = str4;
                                    str16 = str6;
                                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 2075506442:
                                if (key.equals("render_serially")) {
                                    boolean asBoolean18 = value.getAsBoolean();
                                    Unit unit105 = Unit.INSTANCE;
                                    ArrayList arrayList104 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList104;
                                    z15 = asBoolean18;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList452222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            case 2117205836:
                                if (key.equals("flow_control")) {
                                    boolean asBoolean19 = value.getAsBoolean();
                                    Unit unit106 = Unit.INSTANCE;
                                    ArrayList arrayList105 = arrayList43;
                                    arrayList5 = arrayList37;
                                    str9 = str24;
                                    arrayList4 = arrayList28;
                                    arrayList8 = arrayList105;
                                    z21 = asBoolean19;
                                    arrayList = arrayList29;
                                    asString = str19;
                                    arrayList7 = arrayList36;
                                    arrayList6 = arrayList24;
                                    arrayList9 = arrayList42;
                                    str8 = str35;
                                    arrayList10 = arrayList41;
                                    str10 = str13;
                                    ArrayList arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                                    str24 = str9;
                                    arrayList37 = arrayList5;
                                    arrayList43 = arrayList8;
                                    arrayList28 = arrayList4522222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                                    str13 = str10;
                                    arrayList36 = arrayList7;
                                    arrayList41 = arrayList10;
                                    str35 = str8;
                                    arrayList29 = arrayList;
                                    arrayList34 = arrayList44;
                                    arrayList30 = arrayList2;
                                    arrayList31 = arrayList3;
                                    arrayList42 = arrayList9;
                                    arrayList24 = arrayList6;
                                    str19 = asString;
                                } else {
                                    arrayList = arrayList29;
                                }
                                break;
                            default:
                                arrayList = arrayList29;
                                break;
                        }
                    } else {
                        arrayList = arrayList29;
                        arrayList2 = arrayList30;
                        arrayList3 = arrayList31;
                    }
                    str6 = str16;
                    str4 = str20;
                    z4 = z9;
                    str3 = str22;
                    z3 = z12;
                    arrayList7 = arrayList36;
                    str2 = str30;
                    jsonArray = jsonArray2;
                    z2 = z15;
                    z = z16;
                    str = str24;
                    arrayList4 = arrayList28;
                    arrayList8 = arrayList43;
                    arrayList5 = arrayList37;
                    str7 = str14;
                    str5 = str19;
                    arrayList6 = arrayList24;
                    arrayList9 = arrayList42;
                    str8 = str35;
                    arrayList10 = arrayList41;
                    str10 = str13;
                    Splitter splitter2222222222 = f01.a;
                    f01.a(new b2(key));
                    Unit unit22222222222 = Unit.INSTANCE;
                    asString = str5;
                    str14 = str7;
                    str9 = str;
                    z16 = z;
                    z15 = z2;
                    jsonArray2 = jsonArray;
                    str30 = str2;
                    z12 = z3;
                    str22 = str3;
                    z9 = z4;
                    str20 = str4;
                    str16 = str6;
                    ArrayList arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 = arrayList4;
                    str24 = str9;
                    arrayList37 = arrayList5;
                    arrayList43 = arrayList8;
                    arrayList28 = arrayList45222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;
                    str13 = str10;
                    arrayList36 = arrayList7;
                    arrayList41 = arrayList10;
                    str35 = str8;
                    arrayList29 = arrayList;
                    arrayList34 = arrayList44;
                    arrayList30 = arrayList2;
                    arrayList31 = arrayList3;
                    arrayList42 = arrayList9;
                    arrayList24 = arrayList6;
                    str19 = asString;
                }
                ArrayList arrayList106 = arrayList41;
                ArrayList arrayList107 = arrayList34;
                ArrayList arrayList108 = arrayList29;
                ArrayList arrayList109 = arrayList30;
                ArrayList arrayList110 = arrayList31;
                String str46 = str16;
                String str47 = str20;
                boolean z26 = z9;
                String str48 = str22;
                boolean z27 = z12;
                ArrayList arrayList111 = arrayList36;
                String str49 = str30;
                JsonArray jsonArray3 = jsonArray2;
                boolean z28 = z15;
                boolean z29 = z16;
                String str50 = str24;
                ArrayList arrayList112 = arrayList28;
                ArrayList arrayList113 = arrayList43;
                ArrayList arrayList114 = arrayList37;
                String str51 = str14;
                String str52 = str19;
                ArrayList arrayList115 = arrayList24;
                ArrayList arrayList116 = arrayList42;
                e2 e2Var3 = e2Var2;
                if (e2Var3 != e2.f) {
                    bcVar = bcVar3;
                    if (bcVar == bc.c && z23) {
                    }
                    h2 h2Var2 = h2Var;
                    arrayList116.replaceAll(new UnaryOperator() { // from class: ads_mobile_sdk.c2$$ExternalSyntheticLambda0
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return c2.a(ref$ObjectRef2, (String) obj);
                        }
                    });
                    JsonObject jsonObject12 = (JsonObject) ref$ObjectRef2.element;
                    Intrinsics.checkNotNull(bundle2);
                    return new i2(str51, arrayList116, jsonObject12, str15, arrayList26, str37, arrayList113, str46, str17, str18, str52, bcVar, xcVar, str36, z24, z5, bundle2, str47, z6, arrayList106, z7, arrayList115, i, str29, arrayList114, str38, jsonObject10, z26, jsonObject9, arrayList109, arrayList110, z8, str21, e2Var3, arrayList25, vc1Var, str48, i2, z10, z11, z27, z13, z14, arrayList35, arrayList40, dg2Var2, str49, arrayList111, j, arrayList107, str23, jsonObject8, jsonArray3, arrayList23, z28, z29, duration, str50, arrayList112, str25, str26, arrayList108, arrayList27, l63Var, jsonObject7, str27, o93Var2, z17, h2Var2, z18, z19, str28, qb2Var, qm3Var, uo2Var, ga2Var2, d, st2Var2, z20, z21, j2, str31, str32, str33, jsonObject6, z22, i3, 0);
                }
                bcVar = bcVar3;
                h2Var = h2.g;
                h2 h2Var22 = h2Var;
                arrayList116.replaceAll(new UnaryOperator() { // from class: ads_mobile_sdk.c2$$ExternalSyntheticLambda0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return c2.a(ref$ObjectRef2, (String) obj);
                    }
                });
                JsonObject jsonObject122 = (JsonObject) ref$ObjectRef2.element;
                Intrinsics.checkNotNull(bundle2);
                return new i2(str51, arrayList116, jsonObject122, str15, arrayList26, str37, arrayList113, str46, str17, str18, str52, bcVar, xcVar, str36, z24, z5, bundle2, str47, z6, arrayList106, z7, arrayList115, i, str29, arrayList114, str38, jsonObject10, z26, jsonObject9, arrayList109, arrayList110, z8, str21, e2Var3, arrayList25, vc1Var, str48, i2, z10, z11, z27, z13, z14, arrayList35, arrayList40, dg2Var2, str49, arrayList111, j, arrayList107, str23, jsonObject8, jsonArray3, arrayList23, z28, z29, duration, str50, arrayList112, str25, str26, arrayList108, arrayList27, l63Var, jsonObject7, str27, o93Var2, z17, h2Var22, z18, z19, str28, qb2Var, qm3Var, uo2Var, ga2Var2, d, st2Var2, z20, z21, j2, str31, str32, str33, jsonObject6, z22, i3, 0);
            } catch (Exception e) {
                e = e;
                List list2 = a2.a(e, "t", e).s;
                String message = e.getMessage();
                if (message == null) {
                    message = e.getClass().getName();
                }
                Intrinsics.checkNotNull(message);
                list2.add(message);
                return i2Var;
            }
        } catch (Exception e2) {
            e = e2;
            i2Var = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String a(Ref$ObjectRef adapterData, String it) {
        Intrinsics.checkNotNullParameter(adapterData, "$adapterData");
        Intrinsics.checkNotNullParameter(it, "it");
        List list = i2.J0;
        return a((JsonObject) adapterData.element, it);
    }

    public static String a(JsonObject adapterData, String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        Intrinsics.checkNotNullParameter(adapterData, "adapterData");
        return i2.J0.contains(className) ? ds1.a(adapterData, "class_name", className) : className;
    }

    public static int a(String str) {
        f2[] f2VarArr = f2.a;
        if (Intrinsics.areEqual(str, C3522b4.i.C)) {
            return 6;
        }
        return Intrinsics.areEqual(str, C3522b4.i.D) ? 7 : -1;
    }
}
