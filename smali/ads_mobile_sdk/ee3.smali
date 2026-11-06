###### Class ads_mobile_sdk.ee3 (ads_mobile_sdk.ee3)
.class public final Lads_mobile_sdk/ee3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/Serializer;


# static fields
.field public static final a:Lads_mobile_sdk/ee3;

.field public static final b:Lads_mobile_sdk/od3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/ee3;

    invoke-direct {v0}, Lads_mobile_sdk/ee3;-><init>()V

    sput-object v0, Lads_mobile_sdk/ee3;->a:Lads_mobile_sdk/ee3;

    .line 85
    invoke-static {}, Lads_mobile_sdk/od3;->v()Lads_mobile_sdk/od3;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/ee3;->b:Lads_mobile_sdk/od3;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/ee3;->b:Lads_mobile_sdk/od3;

    return-object v0
.end method

.method public final readFrom(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 89
    :try_start_0
    invoke-static {p1}, Lads_mobile_sdk/od3;->a(Ljava/io/InputStream;)Lads_mobile_sdk/od3;

    move-result-object p1

    .line 90
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-object p1

    :catch_8
    move-exception p1

    .line 93
    sget-object p2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stored shared settings data has been corrupted: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 94
    sget-object p1, Lads_mobile_sdk/ee3;->b:Lads_mobile_sdk/od3;

    .line 95
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 84
    check-cast p1, Lads_mobile_sdk/od3;

    .line 85
    invoke-virtual {p1, p2}, Lads_mobile_sdk/f;->writeTo(Ljava/io/OutputStream;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
