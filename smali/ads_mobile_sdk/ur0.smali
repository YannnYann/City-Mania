###### Class ads_mobile_sdk.ur0 (ads_mobile_sdk.ur0)
.class public final Lads_mobile_sdk/ur0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/vr0;


# instance fields
.field public final a:Lads_mobile_sdk/tw1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/iv2;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/ur0;->a:Lads_mobile_sdk/tw1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ur0;->a:Lads_mobile_sdk/tw1;

    return-object v0
.end method

.method public final a(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .registers 4

    .line 4
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/ur0;->a:Lads_mobile_sdk/tw1;

    .line 6
    invoke-interface {v0}, Lads_mobile_sdk/tw1;->getParserForType()Lads_mobile_sdk/aj2;

    move-result-object v0

    .line 7
    invoke-static {}, Lads_mobile_sdk/er0;->a()Lads_mobile_sdk/er0;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lads_mobile_sdk/aj2;->a(Ljava/io/InputStream;Lads_mobile_sdk/er0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/tw1;
    :try_end_10
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p1

    .line 9
    new-instance v0, Lads_mobile_sdk/tr0;

    const-string v1, "Cannot read proto."

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/tr0;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/io/FileOutputStream;)V
    .registers 3

    .line 11
    check-cast p1, Lads_mobile_sdk/tw1;

    .line 12
    invoke-interface {p1, p2}, Lads_mobile_sdk/tw1;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
