###### Class ads_mobile_sdk.ih2 (ads_mobile_sdk.ih2)
.class public final Lads_mobile_sdk/ih2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/vv2;


# instance fields
.field public final a:Lads_mobile_sdk/tx;

.field public final b:Lads_mobile_sdk/ts3;

.field public final c:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tx;Lads_mobile_sdk/ts3;J)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/ih2;->a:Lads_mobile_sdk/tx;

    .line 21
    iput-object p2, p0, Lads_mobile_sdk/ih2;->b:Lads_mobile_sdk/ts3;

    .line 22
    iput-wide p3, p0, Lads_mobile_sdk/ih2;->c:J

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/iv2;)Z
    .registers 8

    const/4 v0, 0x1

    if-eqz p1, :cond_7b

    .line 27
    invoke-static {}, Lads_mobile_sdk/iv2;->x()Lads_mobile_sdk/iv2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lads_mobile_sdk/vz0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_7b

    .line 28
    :cond_e
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->z()Lads_mobile_sdk/hh2;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/hh2;->y()Lads_mobile_sdk/kx3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/kx3;->w()I

    move-result v1

    int-to-short v1, v1

    .line 29
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->z()Lads_mobile_sdk/hh2;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/hh2;->y()Lads_mobile_sdk/kx3;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/kx3;->x()I

    move-result v2

    .line 30
    invoke-static {}, Lads_mobile_sdk/iy3;->b()[B

    move-result-object v3

    .line 31
    const-string v4, "versionArray"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    .line 32
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 33
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const-string v2, "array(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_57

    .line 38
    iget-object p1, p0, Lads_mobile_sdk/ih2;->b:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->s3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    return v0

    .line 43
    :cond_57
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->z()Lads_mobile_sdk/hh2;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/hh2;->w()J

    move-result-wide v1

    iget-object p1, p0, Lads_mobile_sdk/ih2;->a:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 45
    iget-wide v3, p0, Lads_mobile_sdk/ih2;->c:J

    cmp-long p1, v1, v3

    if-gtz p1, :cond_70

    goto :goto_71

    :cond_70
    const/4 v0, 0x0

    :goto_71
    if-eqz v0, :cond_7a

    .line 49
    iget-object p1, p0, Lads_mobile_sdk/ih2;->b:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->q3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    :cond_7a
    return v0

    .line 50
    :cond_7b
    :goto_7b
    iget-object p1, p0, Lads_mobile_sdk/ih2;->b:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->p3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    return v0
.end method

.method public final b(Lads_mobile_sdk/iv2;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_59

    .line 49
    invoke-static {}, Lads_mobile_sdk/iv2;->x()Lads_mobile_sdk/iv2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lads_mobile_sdk/vz0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_59

    .line 50
    :cond_e
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->z()Lads_mobile_sdk/hh2;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/hh2;->y()Lads_mobile_sdk/kx3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/kx3;->w()I

    move-result v1

    int-to-short v1, v1

    .line 51
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->z()Lads_mobile_sdk/hh2;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/hh2;->y()Lads_mobile_sdk/kx3;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/kx3;->x()I

    move-result p1

    .line 52
    invoke-static {}, Lads_mobile_sdk/iy3;->b()[B

    move-result-object v2

    .line 53
    const-string v3, "versionArray"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x6

    .line 54
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 55
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const-string v1, "array(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_57

    .line 60
    iget-object p1, p0, Lads_mobile_sdk/ih2;->b:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->t3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    return v0

    :cond_57
    const/4 p1, 0x1

    return p1

    .line 61
    :cond_59
    :goto_59
    iget-object p1, p0, Lads_mobile_sdk/ih2;->b:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->r3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    return v0
.end method
