###### Class com.ironsource.C3597f6 (com.ironsource.f6)
.class public final Lcom/ironsource/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Rc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/f6$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/g6;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/h6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/f6;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/g6;)V
    .registers 3

    const-string v0, "loadListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/ironsource/f6;->a:Lcom/ironsource/g6;

    return-void
.end method

.method public final a(Lcom/ironsource/h6;)V
    .registers 3

    const-string v0, "showListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/f6;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onInterstitialAdRewarded(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/f6;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/h6;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1, p2}, Lcom/ironsource/h6;->onAdInstanceDidReward(Ljava/lang/String;I)V

    :cond_d
    return-void
.end method

.method public onInterstitialClick()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/f6;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/h6;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/ironsource/h6;->onAdInstanceDidClick()V

    :cond_d
    return-void
.end method

.method public onInterstitialClose()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/f6;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/h6;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/ironsource/h6;->onAdInstanceDidDismiss()V

    :cond_d
    return-void
.end method

.method public onInterstitialEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    const-string p2, "impressions"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 2
    iget-object p1, p0, Lcom/ironsource/f6;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/h6;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/ironsource/h6;->onAdInstanceDidBecomeVisible()V

    :cond_15
    return-void
.end method

.method public onInterstitialInitFailed(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .registers 1

    .line 0
    return-void
.end method

.method public onInterstitialLoadFailed(Ljava/lang/String;)V
    .registers 3

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/f6;->a:Lcom/ironsource/g6;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/ironsource/g6;->a(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public onInterstitialLoadSuccess(Lcom/ironsource/R9;)V
    .registers 3

    const-string v0, "adInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/f6;->a:Lcom/ironsource/g6;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/ironsource/g6;->a(Lcom/ironsource/R9;)V

    :cond_c
    return-void
.end method

.method public onInterstitialOpen()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/f6;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/h6;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/ironsource/h6;->onAdInstanceDidShow()V

    :cond_d
    return-void
.end method

.method public onInterstitialShowFailed(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/f6;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/h6;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lcom/ironsource/h6;->a(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onInterstitialShowSuccess()V
    .registers 1

    .line 0
    return-void
.end method

###### Class com.ironsource.C3597f6.a (com.ironsource.f6$a)
.class public final Lcom/ironsource/f6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/f6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/f6$a;

.field public static final b:Ljava/lang/String; = "impressions"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/f6$a;

    invoke-direct {v0}, Lcom/ironsource/f6$a;-><init>()V

    sput-object v0, Lcom/ironsource/f6$a;->a:Lcom/ironsource/f6$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
