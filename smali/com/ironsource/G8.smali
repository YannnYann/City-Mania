###### Class com.ironsource.G8 (com.ironsource.G8)
.class public final Lcom/ironsource/G8;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/G8$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/ironsource/G8$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, "ISNNativeAdContainer"

    iput-object p1, p0, Lcom/ironsource/G8;->a:Ljava/lang/String;

    return-void
.end method

.method private final a()Lcom/ironsource/Dg;
    .registers 6

    .line 1
    new-instance v0, Lcom/ironsource/Dg;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_c

    move v1, v3

    goto :goto_d

    :cond_c
    move v1, v2

    :goto_d
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v4

    if-nez v4, :cond_14

    move v2, v3

    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/Dg;-><init>(ZZZ)V

    return-object v0
.end method


# virtual methods
.method public final getListener$mediationsdk_release()Lcom/ironsource/G8$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/G8;->b:Lcom/ironsource/G8$a;

    return-object v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 5

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/G8;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/G8;->b:Lcom/ironsource/G8$a;

    if-eqz p1, :cond_26

    invoke-direct {p0}, Lcom/ironsource/G8;->a()Lcom/ironsource/Dg;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/G8$a;->a(Lcom/ironsource/Dg;)V

    :cond_26
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/G8;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/G8;->b:Lcom/ironsource/G8$a;

    if-eqz p1, :cond_21

    invoke-direct {p0}, Lcom/ironsource/G8;->a()Lcom/ironsource/Dg;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ironsource/G8$a;->a(Lcom/ironsource/Dg;)V

    :cond_21
    return-void
.end method

.method public final setListener$mediationsdk_release(Lcom/ironsource/G8$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/G8;->b:Lcom/ironsource/G8$a;

    return-void
.end method

###### Class com.ironsource.G8.a (com.ironsource.G8$a)
.class public interface abstract Lcom/ironsource/G8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/G8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/ironsource/Dg;)V
.end method
