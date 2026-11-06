###### Class ads_mobile_sdk.hr0 (ads_mobile_sdk.hr0)
.class abstract Lads_mobile_sdk/hr0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lads_mobile_sdk/fr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/fr0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/gr0;

    invoke-direct {v0}, Lads_mobile_sdk/gr0;-><init>()V

    sput-object v0, Lads_mobile_sdk/hr0;->a:Lads_mobile_sdk/fr0;

    return-void
.end method

.method public static a()Lads_mobile_sdk/fr0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lads_mobile_sdk/fr0<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lads_mobile_sdk/hr0;->a:Lads_mobile_sdk/fr0;

    return-object v0
.end method
