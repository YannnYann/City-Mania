###### Class androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerApi31Ext9Impl (androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerApi31Ext9Impl)
.class public final Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerApi31Ext9Impl;
.super Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon;
.source "MeasurementManagerApi31Ext9Impl.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "ClassVerificationFailure"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerApi31Ext9Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object p1

    const-string v0, "get(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon;-><init>(Landroid/adservices/measurement/MeasurementManager;)V

    return-void
.end method
