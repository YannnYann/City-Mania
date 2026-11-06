###### Class ads_mobile_sdk.t9 (ads_mobile_sdk.t9)
.class public final Lads_mobile_sdk/t9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .registers 4

    .line 1
    invoke-static {}, Lads_mobile_sdk/cf2;->a()Lads_mobile_sdk/cf2;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object p1, Lads_mobile_sdk/l9;->d:Lads_mobile_sdk/l9;

    .line 3
    invoke-virtual {p1}, Lads_mobile_sdk/sn;->a()Z

    move-result v0

    .line 4
    iget-boolean v1, p1, Lads_mobile_sdk/sn;->b:Z

    if-eq v1, v0, :cond_21

    .line 5
    iput-boolean v0, p1, Lads_mobile_sdk/sn;->b:Z

    .line 6
    iget-boolean v1, p1, Lads_mobile_sdk/sn;->a:Z

    if-eqz v1, :cond_21

    .line 7
    invoke-virtual {p1, v0}, Lads_mobile_sdk/l9;->a(Z)V

    .line 8
    iget-object p1, p1, Lads_mobile_sdk/sn;->c:Lads_mobile_sdk/rn;

    if-eqz p1, :cond_21

    .line 9
    invoke-interface {p1, v0}, Lads_mobile_sdk/rn;->a(Z)V

    :cond_21
    return-void
.end method
