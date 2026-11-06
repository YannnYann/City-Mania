###### Class ads_mobile_sdk.ml3 (ads_mobile_sdk.ml3)
.class public final Lads_mobile_sdk/ml3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/vv2;


# instance fields
.field public final a:Lads_mobile_sdk/ts3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ts3;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/ml3;->a:Lads_mobile_sdk/ts3;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/iv2;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lads_mobile_sdk/iv2;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_59

    .line 28
    invoke-static {}, Lads_mobile_sdk/iv2;->x()Lads_mobile_sdk/iv2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lads_mobile_sdk/vz0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_59

    .line 29
    :cond_e
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->z()Lads_mobile_sdk/hh2;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/hh2;->y()Lads_mobile_sdk/kx3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/kx3;->w()I

    move-result v1

    int-to-short v1, v1

    .line 30
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->z()Lads_mobile_sdk/hh2;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/hh2;->y()Lads_mobile_sdk/kx3;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/kx3;->x()I

    move-result p1

    .line 31
    invoke-static {}, Lads_mobile_sdk/iy3;->b()[B

    move-result-object v2

    .line 32
    const-string v3, "versionArray"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x6

    .line 33
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 34
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const-string v1, "array(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_57

    .line 39
    iget-object p1, p0, Lads_mobile_sdk/ml3;->a:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->t3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    return v0

    :cond_57
    const/4 p1, 0x1

    return p1

    .line 40
    :cond_59
    :goto_59
    iget-object p1, p0, Lads_mobile_sdk/ml3;->a:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->r3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    return v0
.end method
