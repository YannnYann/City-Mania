###### Class com.vungle.ads.internal.ui.a (com.vungle.ads.internal.ui.a)
.class public final Lcom/vungle/ads/internal/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vungle/ads/internal/ui/VungleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_15

    const/high16 p0, 0x10000000

    .line 7
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    :cond_15
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 10
    const-string v1, "request"

    invoke-virtual {p0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string p1, "request_eventId"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static final a(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ui/l;->i:Lcom/vungle/ads/internal/u0;

    .line 2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_f

    const-string v0, "request_eventId"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/vungle/ads/internal/presenter/a;)V
    .registers 1

    .line 3
    sput-object p0, Lcom/vungle/ads/internal/ui/l;->j:Lcom/vungle/ads/internal/presenter/a;

    return-void
.end method

.method public static a(Lcom/vungle/ads/internal/u0;)V
    .registers 1

    .line 4
    sput-object p0, Lcom/vungle/ads/internal/ui/l;->i:Lcom/vungle/ads/internal/u0;

    return-void
.end method

.method public static final b(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ui/l;->i:Lcom/vungle/ads/internal/u0;

    .line 2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_f

    const-string v0, "request"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method
