###### Class ads_mobile_sdk.ii2 (ads_mobile_sdk.ii2)
.class public final Lads_mobile_sdk/ii2;
.super Lads_mobile_sdk/bi2;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/hi2;


# static fields
.field public static h:Lads_mobile_sdk/ii2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 49
    const-string v0, "paidv1_creation_time"

    const-string v1, "PaidV1LifecycleImpl"

    const-string v2, "paidv1_id"

    invoke-direct {p0, p1, v2, v0, v1}, Lads_mobile_sdk/bi2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
