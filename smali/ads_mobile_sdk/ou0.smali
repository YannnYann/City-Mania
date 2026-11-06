###### Class ads_mobile_sdk.ou0 (ads_mobile_sdk.ou0)
.class public abstract synthetic Lads_mobile_sdk/ou0;
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
    sput-object v0, Lads_mobile_sdk/ou0;->a:[I

    return-void
.end method
