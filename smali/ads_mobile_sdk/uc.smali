###### Class ads_mobile_sdk.uc (ads_mobile_sdk.uc)
.class public abstract Lads_mobile_sdk/uc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lads_mobile_sdk/vc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/vc;

    invoke-direct {v0}, Lads_mobile_sdk/vc;-><init>()V

    sput-object v0, Lads_mobile_sdk/uc;->a:Lads_mobile_sdk/vc;

    return-void
.end method
