###### Class ads_mobile_sdk.bc3 (ads_mobile_sdk.bc3)
.class public final Lads_mobile_sdk/bc3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Lads_mobile_sdk/tn3;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "getServerSideVerificationOptions()Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;"

    const/4 v1, 0x0

    const-class v2, Lads_mobile_sdk/bc3;

    const-string v3, "serverSideVerificationOptions"

    invoke-static {v2, v3, v0, v1}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lkotlin/reflect/KProperty;

    aput-object v0, v2, v1

    sput-object v2, Lads_mobile_sdk/bc3;->b:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lads_mobile_sdk/tn3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lads_mobile_sdk/tn3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/bc3;->a:Lads_mobile_sdk/tn3;

    return-void
.end method
