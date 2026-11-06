###### Class ads_mobile_sdk.yf2 (ads_mobile_sdk.yf2)
.class public final Lads_mobile_sdk/yf2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 33
    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    if-ne p1, v0, :cond_1a

    .line 34
    const-string p1, "android.media.extra.AUDIO_PLUG_STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_15

    .line 36
    sput p2, Lads_mobile_sdk/zf2;->a:I

    return-void

    :cond_15
    if-ne p1, p2, :cond_1a

    const/4 p1, 0x2

    .line 38
    sput p1, Lads_mobile_sdk/zf2;->a:I

    :cond_1a
    return-void
.end method
