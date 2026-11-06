###### Class io.bidmachine.internal.AbstractC4234s (io.bidmachine.internal.s)
.class public abstract Lio/bidmachine/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static c:Lcom/iab/omid/library/appodeal/adsession/Partner;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/internal/s;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/internal/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lcom/iab/omid/library/appodeal/adsession/Partner;)Lcom/iab/omid/library/appodeal/adsession/Partner;
    .registers 1

    .line 1
    sput-object p0, Lio/bidmachine/internal/s;->c:Lcom/iab/omid/library/appodeal/adsession/Partner;

    return-object p0
.end method

.method public static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 2
    sget-object v0, Lio/bidmachine/internal/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 3
    sget-object v0, Lio/bidmachine/internal/s;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1f

    .line 6
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    invoke-static {}, Lio/bidmachine/ExtraParamsManager;->get()Lio/bidmachine/ExtraParamsManager;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lio/bidmachine/ExtraParamsManager;->getInternalDataRetriever(Landroid/content/Context;)Lio/bidmachine/utils/data/StructDataRetriever;

    move-result-object v0

    .line 9
    const-string v1, "omsdk_disabled"

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/utils/data/MapDataRetriever;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    :goto_1f
    return-void

    .line 13
    :cond_20
    new-instance v0, Lio/bidmachine/internal/s$a;

    invoke-direct {v0, p0}, Lio/bidmachine/internal/s$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/explorestack/protobuf/Struct$Builder;)V
    .registers 3

    .line 14
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 15
    const-string v1, "Appodeal"

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 17
    const-string v1, "omidpn"

    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 22
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 23
    const-string v1, "1.6.3"

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 25
    const-string v1, "omidpv"

    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    return-void
.end method

.method public static a(Lio/bidmachine/protobuf/sdk/SDK$Builder;)V
    .registers 2

    .line 26
    const-string v0, "Appodeal"

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setOmidpn(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 27
    const-string v0, "1.6.3"

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setOmidpv(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    return-void
.end method

.method public static b()Lcom/iab/omid/library/appodeal/adsession/Partner;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/internal/s;->c:Lcom/iab/omid/library/appodeal/adsession/Partner;

    return-object v0
.end method

.method public static c()Z
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/internal/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

###### Class io.bidmachine.internal.AbstractC4234s.a (io.bidmachine.internal.s$a)
.class public Lio/bidmachine/internal/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/s;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/s$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/iab/omid/library/appodeal/Omid;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_27

    .line 5
    :cond_7
    iget-object v0, p0, Lio/bidmachine/internal/s$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iab/omid/library/appodeal/Omid;->activate(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/iab/omid/library/appodeal/Omid;->updateLastActivity()V

    .line 7
    const-string v0, "Appodeal"

    const-string v1, "1.6.3"

    invoke-static {v0, v1}, Lcom/iab/omid/library/appodeal/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/appodeal/adsession/Partner;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/internal/s;->a(Lcom/iab/omid/library/appodeal/adsession/Partner;)Lcom/iab/omid/library/appodeal/adsession/Partner;

    .line 8
    invoke-static {}, Lio/bidmachine/internal/s;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    .line 10
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :goto_27
    return-void
.end method
