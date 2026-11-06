###### Class ads_mobile_sdk.t91 (ads_mobile_sdk.t91)
.class public final Lads_mobile_sdk/t91;
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
    const-string v0, "getImpressionData()Ljava/util/Map;"

    const/4 v1, 0x0

    const-class v2, Lads_mobile_sdk/t91;

    const-string v3, "impressionData"

    invoke-static {v2, v3, v0, v1}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Lkotlin/reflect/KProperty;

    aput-object v0, v2, v1

    sput-object v2, Lads_mobile_sdk/t91;->b:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lads_mobile_sdk/tn3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lads_mobile_sdk/tn3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/t91;->a:Lads_mobile_sdk/tn3;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 6

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/t91;->a:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/t91;->b:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, p0, v3}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    .line 3
    const-string v4, "targetAppId"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    :cond_17
    move-object v0, v3

    :goto_18
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1f

    check-cast v0, Ljava/lang/String;

    goto :goto_20

    :cond_1f
    move-object v0, v3

    :goto_20
    if-nez v0, :cond_3e

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/t91;->a:Lads_mobile_sdk/tn3;

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_35

    .line 5
    const-string v1, "targetPackageName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_36

    :cond_35
    move-object v0, v3

    :goto_36
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3d

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_3d
    return-object v3

    :cond_3e
    return-object v0
.end method
