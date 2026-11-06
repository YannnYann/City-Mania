###### Class ads_mobile_sdk.yp1 (ads_mobile_sdk.yp1)
.class public final Lads_mobile_sdk/yp1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/zp1;

.field public final synthetic b:Ljava/util/Timer;

.field public final synthetic c:Lads_mobile_sdk/aq1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/aq1;Lads_mobile_sdk/zp1;Ljava/util/Timer;)V
    .registers 4

    .line 109
    iput-object p1, p0, Lads_mobile_sdk/yp1;->c:Lads_mobile_sdk/aq1;

    iput-object p2, p0, Lads_mobile_sdk/yp1;->a:Lads_mobile_sdk/zp1;

    iput-object p3, p0, Lads_mobile_sdk/yp1;->b:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 112
    iget-object v0, p0, Lads_mobile_sdk/yp1;->c:Lads_mobile_sdk/aq1;

    iget-object v0, v0, Lads_mobile_sdk/aq1;->g:Lads_mobile_sdk/g04;

    .line 113
    iget-object v1, v0, Lads_mobile_sdk/g04;->a:Landroid/webkit/WebView;

    .line 114
    iget-object v0, v0, Lads_mobile_sdk/g04;->b:Lads_mobile_sdk/h04;

    invoke-interface {v0}, Lads_mobile_sdk/h04;->a()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v1, v0}, Landroidx/webkit/WebViewCompat;->removeWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lads_mobile_sdk/yp1;->a:Lads_mobile_sdk/zp1;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lads_mobile_sdk/zp1;->a(Z)V

    .line 117
    iget-object v0, p0, Lads_mobile_sdk/yp1;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
