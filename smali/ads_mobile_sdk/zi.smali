###### Class ads_mobile_sdk.zi (ads_mobile_sdk.zi)
.class public final Lads_mobile_sdk/zi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/Serializer;


# static fields
.field public static final a:Lads_mobile_sdk/zi;

.field public static final b:Lads_mobile_sdk/ri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/zi;

    invoke-direct {v0}, Lads_mobile_sdk/zi;-><init>()V

    sput-object v0, Lads_mobile_sdk/zi;->a:Lads_mobile_sdk/zi;

    .line 39
    invoke-static {}, Lads_mobile_sdk/ri;->v()Lads_mobile_sdk/ri;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/zi;->b:Lads_mobile_sdk/ri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/zi;->b:Lads_mobile_sdk/ri;

    return-object v0
.end method

.method public final readFrom(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 43
    :try_start_0
    invoke-static {p1}, Lads_mobile_sdk/ri;->a(Ljava/io/InputStream;)Lads_mobile_sdk/ri;

    move-result-object p1

    .line 44
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-object p1

    .line 45
    :catch_8
    sget-object p1, Lads_mobile_sdk/zi;->b:Lads_mobile_sdk/ri;

    .line 46
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 38
    check-cast p1, Lads_mobile_sdk/ri;

    .line 39
    invoke-virtual {p1, p2}, Lads_mobile_sdk/f;->writeTo(Ljava/io/OutputStream;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
