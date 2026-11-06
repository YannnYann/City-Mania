###### Class ads_mobile_sdk.p53 (ads_mobile_sdk.p53)
.class public final Lads_mobile_sdk/p53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    .line 1
    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/p53;->a:[B

    return-void
.end method

.method public static a(Lads_mobile_sdk/p53;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v1, "charset"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    .line 21
    iget-object p0, p0, Lads_mobile_sdk/p53;->a:[B

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method


# virtual methods
.method public final a()Ljava/io/ByteArrayInputStream;
    .registers 3

    .line 22
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lads_mobile_sdk/p53;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final close()V
    .registers 1

    .line 0
    return-void
.end method
