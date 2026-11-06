package io.bidmachine.internal;

import com.explorestack.protobuf.BoolValue;
import com.explorestack.protobuf.StringValue;
import io.bidmachine.protobuf.sdk.MaskedSignals;
import io.bidmachine.protobuf.sdk.Regs;
import io.bidmachine.protobuf.sdk.RestrictionKind;
import io.bidmachine.utils.ProtoUtilsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class B {
    public static final B a = new B();

    public static final void a(Regs.Builder regsBuilder, MaskedSignals.Builder maskedSignalsBuilder, C4236u privacyContext) {
        Intrinsics.checkNotNullParameter(regsBuilder, "regsBuilder");
        Intrinsics.checkNotNullParameter(maskedSignalsBuilder, "maskedSignalsBuilder");
        Intrinsics.checkNotNullParameter(privacyContext, "privacyContext");
        B b = a;
        regsBuilder.setPub(b.a(privacyContext.f()));
        regsBuilder.setCmp(b.a(privacyContext.b()));
        regsBuilder.setPersistedMode(F.a(privacyContext.e()));
        regsBuilder.setMaskedSignals(maskedSignalsBuilder);
        List listG = privacyContext.g();
        if (listG.isEmpty()) {
            listG = null;
        }
        if (listG != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listG, 10));
            Iterator it = listG.iterator();
            while (it.hasNext()) {
                arrayList.add(D.a((C) it.next()));
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                regsBuilder.addRestrictionKinds((RestrictionKind) it2.next());
            }
        }
    }

    public final Regs.Pub.Builder a(A publisherPrivacySettings) {
        BoolValue protoBooleanValue;
        StringValue protoStringValue;
        StringValue protoStringValue2;
        BoolValue protoBooleanValue2;
        BoolValue protoBooleanValue3;
        BoolValue protoBooleanValue4;
        StringValue protoStringValue3;
        Intrinsics.checkNotNullParameter(publisherPrivacySettings, "publisherPrivacySettings");
        Regs.Pub.Builder builder = Regs.Pub.newBuilder();
        String strD = publisherPrivacySettings.d();
        if (strD != null && (protoStringValue3 = ProtoUtilsKt.toProtoStringValue(strD)) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setConsentString(protoStringValue3);
        }
        Boolean boolH = publisherPrivacySettings.h();
        if (boolH != null && (protoBooleanValue4 = ProtoUtilsKt.toProtoBooleanValue(boolH.booleanValue())) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setGdprZone(protoBooleanValue4);
        }
        Boolean boolB = publisherPrivacySettings.b();
        if (boolB != null && (protoBooleanValue3 = ProtoUtilsKt.toProtoBooleanValue(boolB.booleanValue())) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setGdprConsent(protoBooleanValue3);
        }
        Boolean boolC = publisherPrivacySettings.c();
        if (boolC != null && (protoBooleanValue2 = ProtoUtilsKt.toProtoBooleanValue(boolC.booleanValue())) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setCoppa(protoBooleanValue2);
        }
        String strA = publisherPrivacySettings.a();
        if (strA != null && (protoStringValue2 = ProtoUtilsKt.toProtoStringValue(strA)) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setCcpa(protoStringValue2);
        }
        String strF = publisherPrivacySettings.f();
        if (strF != null && (protoStringValue = ProtoUtilsKt.toProtoStringValue(strF)) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setGpp(protoStringValue);
        }
        Boolean boolG = publisherPrivacySettings.g();
        if (boolG != null && (protoBooleanValue = ProtoUtilsKt.toProtoBooleanValue(boolG.booleanValue())) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setNonPersonalized(protoBooleanValue);
        }
        List listE = publisherPrivacySettings.e();
        if (listE != null) {
            if (listE.isEmpty()) {
                listE = null;
            }
            if (listE != null) {
                Iterator it = listE.iterator();
                while (it.hasNext()) {
                    builder.addGppSid(((Number) it.next()).intValue());
                }
            }
        }
        Intrinsics.checkNotNullExpressionValue(builder, "builder");
        return builder;
    }

    public final Regs.CMP.Builder a(C4235t platformPrivacySettings) {
        StringValue protoStringValue;
        StringValue protoStringValue2;
        BoolValue protoBooleanValue;
        StringValue protoStringValue3;
        BoolValue protoBooleanValue2;
        StringValue protoStringValue4;
        Intrinsics.checkNotNullParameter(platformPrivacySettings, "platformPrivacySettings");
        Regs.CMP.Builder builder = Regs.CMP.newBuilder();
        String strE = platformPrivacySettings.e();
        if (strE != null && (protoStringValue4 = ProtoUtilsKt.toProtoStringValue(strE)) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setTcfV1String(protoStringValue4);
        }
        Boolean boolF = platformPrivacySettings.f();
        if (boolF != null && (protoBooleanValue2 = ProtoUtilsKt.toProtoBooleanValue(boolF.booleanValue())) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setTcfV1Zone(protoBooleanValue2);
        }
        String strG = platformPrivacySettings.g();
        if (strG != null && (protoStringValue3 = ProtoUtilsKt.toProtoStringValue(strG)) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setTcfV2String(protoStringValue3);
        }
        Boolean boolH = platformPrivacySettings.h();
        if (boolH != null && (protoBooleanValue = ProtoUtilsKt.toProtoBooleanValue(boolH.booleanValue())) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setTcfV2Zone(protoBooleanValue);
        }
        String strA = platformPrivacySettings.a();
        if (strA != null && (protoStringValue2 = ProtoUtilsKt.toProtoStringValue(strA)) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setCcpa(protoStringValue2);
        }
        String strC = platformPrivacySettings.c();
        if (strC != null && (protoStringValue = ProtoUtilsKt.toProtoStringValue(strC)) != null) {
            Intrinsics.checkNotNullExpressionValue(builder, "builder");
            builder.setGpp(protoStringValue);
        }
        List listB = platformPrivacySettings.b();
        if (listB != null) {
            if (listB.isEmpty()) {
                listB = null;
            }
            if (listB != null) {
                Iterator it = listB.iterator();
                while (it.hasNext()) {
                    builder.addGppSid(((Number) it.next()).intValue());
                }
            }
        }
        Intrinsics.checkNotNullExpressionValue(builder, "builder");
        return builder;
    }
}
