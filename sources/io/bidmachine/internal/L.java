package io.bidmachine.internal;

import com.explorestack.protobuf.adcom.Context;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import io.bidmachine.ExternalUserId;
import io.bidmachine.TargetingParams;
import io.bidmachine.protobuf.sdk.MaskedSignals;
import io.bidmachine.utils.Gender;
import io.bidmachine.utils.ProtoSerializerKt;
import io.bidmachine.utils.ProtoUtilsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class L {
    public static final L a = new L();

    public static final class a extends Lambda implements Function0 {
        public final /* synthetic */ TargetingParams.Data a;
        public final /* synthetic */ Context.User.Builder b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(TargetingParams.Data data, Context.User.Builder builder) {
            super(0);
            this.a = data;
            this.b = builder;
        }

        public final void a() {
            String userId = this.a.getUserId();
            if (userId != null) {
                this.b.setId(userId);
            }
            Context.Data.Builder builderA = L.a.a(this.a.getExternalUserIdList());
            if (builderA != null) {
                this.b.addData(builderA.build());
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class b extends Lambda implements Function0 {
        public final /* synthetic */ TargetingParams.Data a;
        public final /* synthetic */ MaskedSignals.Builder b;
        public final /* synthetic */ v c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(TargetingParams.Data data, MaskedSignals.Builder builder, v vVar) {
            super(0);
            this.a = data;
            this.b = builder;
            this.c = vVar;
        }

        public final void a() {
            String userId = this.a.getUserId();
            if (userId != null) {
                this.b.setUserId(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(userId))));
            }
            List<ExternalUserId> externalUserIdList = this.a.getExternalUserIdList();
            if (externalUserIdList != null) {
                MaskedSignals.Builder builder = this.b;
                v vVar = this.c;
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(externalUserIdList, 10));
                for (ExternalUserId externalUserId : externalUserIdList) {
                    arrayList.add(MapsKt__MapsKt.mapOf(TuplesKt.to(C3670j8.x, externalUserId.getSourceId()), TuplesKt.to(C3522b4.i.X, externalUserId.getValue())));
                }
                builder.setExternalUserIds(ProtoUtilsKt.toProtoStringValue(vVar.a(ProtoSerializerKt.protoSerialize(arrayList))));
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class c extends Lambda implements Function0 {
        public final /* synthetic */ TargetingParams.Data a;
        public final /* synthetic */ Context.User.Builder b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(TargetingParams.Data data, Context.User.Builder builder) {
            super(0);
            this.a = data;
            this.b = builder;
        }

        public final void a() {
            Integer birthdayYear = this.a.getBirthdayYear();
            if (birthdayYear != null) {
                this.b.setYob(birthdayYear.intValue());
            }
            Gender gender = this.a.getGender();
            if (gender != null) {
                this.b.setGender(gender.getOrtbValue());
            }
            String strB = L.a.b(this.a.getKeywords());
            if (strB != null) {
                this.b.setKeywords(strB);
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class d extends Lambda implements Function0 {
        public final /* synthetic */ TargetingParams.Data a;
        public final /* synthetic */ MaskedSignals.Builder b;
        public final /* synthetic */ v c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(TargetingParams.Data data, MaskedSignals.Builder builder, v vVar) {
            super(0);
            this.a = data;
            this.b = builder;
            this.c = vVar;
        }

        public final void a() {
            Integer birthdayYear = this.a.getBirthdayYear();
            if (birthdayYear != null) {
                this.b.setYob(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(birthdayYear.intValue()))));
            }
            Gender gender = this.a.getGender();
            if (gender != null) {
                MaskedSignals.Builder builder = this.b;
                v vVar = this.c;
                String ortbValue = gender.getOrtbValue();
                Intrinsics.checkNotNullExpressionValue(ortbValue, "it.ortbValue");
                builder.setGender(ProtoUtilsKt.toProtoStringValue(vVar.a(ProtoSerializerKt.protoSerialize(ortbValue))));
            }
            String strB = L.a.b(this.a.getKeywords());
            if (strB != null) {
                this.b.setKeywords(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(strB))));
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final void a(TargetingParams params, Context.User.Builder builder, MaskedSignals.Builder maskedSignalsBuilder, w privacyGroupRestrictions, v privacyDataMasker) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(maskedSignalsBuilder, "maskedSignalsBuilder");
        Intrinsics.checkNotNullParameter(privacyGroupRestrictions, "privacyGroupRestrictions");
        Intrinsics.checkNotNullParameter(privacyDataMasker, "privacyDataMasker");
        a.a(params.getData$bidmachine_android_sdk_ba_3_8_0(), builder, maskedSignalsBuilder, privacyGroupRestrictions, privacyDataMasker);
    }

    public final String b(List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return CollectionsKt___CollectionsKt.joinToString$default(list, ",", null, null, 0, null, null, 62, null);
    }

    public final void a(TargetingParams.Data data, Context.User.Builder builder, MaskedSignals.Builder builder2, w wVar, v vVar) {
        w.a(wVar, new a(data, builder), new b(data, builder2, vVar), null, 4, null);
        wVar.a(new c(data, builder), new d(data, builder2, vVar));
        builder.setGeo(C4229m.a.a(data, builder2, wVar, vVar).build());
    }

    public final Context.Data.Builder a(List list) {
        Object objM2760constructorimpl;
        Object objM2760constructorimpl2;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Context.Data.Builder id = Context.Data.newBuilder().setId("external_user_ids");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ExternalUserId externalUserId = (ExternalUserId) it.next();
            try {
                Result.Companion companion = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(externalUserId.getSourceId());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
                objM2760constructorimpl = null;
            }
            String str = (String) objM2760constructorimpl;
            try {
                objM2760constructorimpl2 = Result.m2760constructorimpl(externalUserId.getValue());
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.Companion;
                objM2760constructorimpl2 = Result.m2760constructorimpl(ResultKt.createFailure(th2));
            }
            if (Result.m2765isFailureimpl(objM2760constructorimpl2)) {
                objM2760constructorimpl2 = null;
            }
            String str2 = (String) objM2760constructorimpl2;
            if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
                id.addSegment(Context.Data.Segment.newBuilder().setId(str).setValue(str2));
            }
        }
        return id;
    }
}
