###### Class ads_mobile_sdk.ps1 (ads_mobile_sdk.ps1)
.class abstract Lads_mobile_sdk/ps1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lads_mobile_sdk/ns1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/os1;

    invoke-direct {v0}, Lads_mobile_sdk/os1;-><init>()V

    sput-object v0, Lads_mobile_sdk/ps1;->a:Lads_mobile_sdk/ns1;

    return-void
.end method

.method public static a()Lads_mobile_sdk/ns1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ps1;->a:Lads_mobile_sdk/ns1;

    return-object v0
.end method
