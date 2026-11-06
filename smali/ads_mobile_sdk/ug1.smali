###### Class ads_mobile_sdk.ug1 (ads_mobile_sdk.ug1)
.class public final Lads_mobile_sdk/ug1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/Serializer;


# static fields
.field public static final a:Lads_mobile_sdk/ug1;

.field public static final b:Lads_mobile_sdk/og1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/ug1;

    invoke-direct {v0}, Lads_mobile_sdk/ug1;-><init>()V

    sput-object v0, Lads_mobile_sdk/ug1;->a:Lads_mobile_sdk/ug1;

    .line 34
    invoke-static {}, Lads_mobile_sdk/og1;->w()Lads_mobile_sdk/og1;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/ug1;->b:Lads_mobile_sdk/og1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/ug1;->b:Lads_mobile_sdk/og1;

    return-object v0
.end method

.method public final readFrom(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 38
    :try_start_0
    invoke-static {p1}, Lads_mobile_sdk/og1;->a(Ljava/io/InputStream;)Lads_mobile_sdk/og1;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-object p1

    .line 42
    :catch_8
    const-string p1, "Stored data has been corrupted"

    const/4 p2, 0x0

    .line 43
    invoke-static {p1, p2}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    sget-object p1, Lads_mobile_sdk/ug1;->b:Lads_mobile_sdk/og1;

    .line 45
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 33
    check-cast p1, Lads_mobile_sdk/og1;

    .line 34
    invoke-virtual {p1, p2}, Lads_mobile_sdk/f;->writeTo(Ljava/io/OutputStream;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
