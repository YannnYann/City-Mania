###### Class ads_mobile_sdk.gb2 (ads_mobile_sdk.gb2)
.class abstract Lads_mobile_sdk/gb2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lads_mobile_sdk/eb2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/fb2;

    invoke-direct {v0}, Lads_mobile_sdk/fb2;-><init>()V

    sput-object v0, Lads_mobile_sdk/gb2;->a:Lads_mobile_sdk/eb2;

    return-void
.end method

.method public static a()Lads_mobile_sdk/eb2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/gb2;->a:Lads_mobile_sdk/eb2;

    return-object v0
.end method
