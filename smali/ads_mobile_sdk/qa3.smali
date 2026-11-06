###### Class ads_mobile_sdk.qa3 (ads_mobile_sdk.qa3)
.class public final Lads_mobile_sdk/qa3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ra3;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/ra3;->d:Lads_mobile_sdk/ra3;

    .line 2
    iput-object v0, p0, Lads_mobile_sdk/qa3;->a:Lads_mobile_sdk/ra3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 42
    iget-object p1, p0, Lads_mobile_sdk/qa3;->a:Lads_mobile_sdk/ra3;

    iget-boolean p2, p1, Lads_mobile_sdk/ra3;->c:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/ra3;->a(ZZ)V

    .line 43
    iget-object p1, p0, Lads_mobile_sdk/qa3;->a:Lads_mobile_sdk/ra3;

    iput-boolean v0, p1, Lads_mobile_sdk/ra3;->b:Z

    return-void

    .line 44
    :cond_19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 45
    iget-object p1, p0, Lads_mobile_sdk/qa3;->a:Lads_mobile_sdk/ra3;

    iget-boolean p2, p1, Lads_mobile_sdk/ra3;->c:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/ra3;->a(ZZ)V

    .line 46
    iget-object p1, p0, Lads_mobile_sdk/qa3;->a:Lads_mobile_sdk/ra3;

    iput-boolean v0, p1, Lads_mobile_sdk/ra3;->b:Z

    :cond_31
    return-void
.end method
