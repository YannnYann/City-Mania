###### Class ads_mobile_sdk.mu1 (ads_mobile_sdk.mu1)
.class abstract Lads_mobile_sdk/mu1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lads_mobile_sdk/ku1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/lu1;

    invoke-direct {v0}, Lads_mobile_sdk/lu1;-><init>()V

    sput-object v0, Lads_mobile_sdk/mu1;->a:Lads_mobile_sdk/ku1;

    return-void
.end method

.method public static a()Lads_mobile_sdk/ku1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/mu1;->a:Lads_mobile_sdk/ku1;

    return-object v0
.end method
