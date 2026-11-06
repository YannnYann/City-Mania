###### Class ads_mobile_sdk.h (ads_mobile_sdk.h)
.class public abstract Lads_mobile_sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/aj2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lads_mobile_sdk/tw1;",
        ">",
        "Ljava/lang/Object;",
        "Lads_mobile_sdk/aj2<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final a:Lads_mobile_sdk/er0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lads_mobile_sdk/er0;->a()Lads_mobile_sdk/er0;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/h;->a:Lads_mobile_sdk/er0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/tw1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    if-eqz p1, :cond_16

    .line 79
    invoke-interface {p1}, Lads_mobile_sdk/uw1;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    .line 80
    :cond_9
    invoke-direct {p0, p1}, Lads_mobile_sdk/h;->b(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/xv3;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lads_mobile_sdk/xv3;->a()Lads_mobile_sdk/np1;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Lads_mobile_sdk/np1;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    :cond_16
    :goto_16
    return-object p1
.end method

.method private b(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/xv3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "Lads_mobile_sdk/xv3;"
        }
    .end annotation

    .line 30
    instance-of v0, p1, Lads_mobile_sdk/f;

    if-eqz v0, :cond_b

    .line 31
    check-cast p1, Lads_mobile_sdk/f;

    invoke-virtual {p1}, Lads_mobile_sdk/f;->b()Lads_mobile_sdk/xv3;

    move-result-object p1

    return-object p1

    .line 38
    :cond_b
    new-instance v0, Lads_mobile_sdk/xv3;

    invoke-direct {v0, p1}, Lads_mobile_sdk/xv3;-><init>(Lads_mobile_sdk/tw1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/io/InputStream;Lads_mobile_sdk/er0;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/h;->b(Ljava/io/InputStream;Lads_mobile_sdk/er0;)Lads_mobile_sdk/tw1;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/InputStream;Lads_mobile_sdk/er0;)Lads_mobile_sdk/tw1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lads_mobile_sdk/er0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 283
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/h;->c(Ljava/io/InputStream;Lads_mobile_sdk/er0;)Lads_mobile_sdk/tw1;

    move-result-object p1

    invoke-direct {p0, p1}, Lads_mobile_sdk/h;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/tw1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 309
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/h;->c(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Lads_mobile_sdk/tw1;

    move-result-object p1

    return-object p1
.end method

.method public c(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Lads_mobile_sdk/tw1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/my;",
            "Lads_mobile_sdk/er0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 99
    invoke-interface {p0, p1, p2}, Lads_mobile_sdk/aj2;->a(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/tw1;

    invoke-direct {p0, p1}, Lads_mobile_sdk/h;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/tw1;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;Lads_mobile_sdk/er0;)Lads_mobile_sdk/tw1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lads_mobile_sdk/er0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 326
    invoke-static {p1}, Lads_mobile_sdk/my;->a(Ljava/io/InputStream;)Lads_mobile_sdk/my;

    move-result-object p1

    .line 327
    invoke-interface {p0, p1, p2}, Lads_mobile_sdk/aj2;->a(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/tw1;

    const/4 v0, 0x0

    .line 329
    :try_start_b
    invoke-virtual {p1, v0}, Lads_mobile_sdk/my;->a(I)V
    :try_end_e
    .catch Lads_mobile_sdk/np1; {:try_start_b .. :try_end_e} :catch_f

    return-object p2

    :catch_f
    move-exception p1

    .line 331
    invoke-virtual {p1, p2}, Lads_mobile_sdk/np1;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method
