###### Class ads_mobile_sdk.lm1 (ads_mobile_sdk.lm1)
.class public abstract synthetic Lads_mobile_sdk/lm1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lads_mobile_sdk/q02;->values()[Lads_mobile_sdk/q02;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_9
    aput v1, v0, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_b} :catch_b

    :catch_b
    :try_start_b
    sget-object v2, Lads_mobile_sdk/q02;->a:Lads_mobile_sdk/q02;

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_10} :catch_10

    :catch_10
    sput-object v0, Lads_mobile_sdk/lm1;->a:[I

    return-void
.end method
