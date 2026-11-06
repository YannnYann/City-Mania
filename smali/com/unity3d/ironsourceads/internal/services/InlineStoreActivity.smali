###### Class com.unity3d.ironsourceads.internal.services.InlineStoreActivity (com.unity3d.ironsourceads.internal.services.InlineStoreActivity)
.class public Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$a;,
        Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "InlineStoreActivity"

.field private static final d:I = 0x3e9


# instance fields
.field private a:Lcom/ironsource/sdk/controller/v;

.field private b:Z


# direct methods
.method public static synthetic $r8$lambda$YbYm0xP7ve7hLOq5txMvVO_5qSo(Ljava/util/Map;Lcom/ironsource/D5;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->a(Ljava/util/Map;Lcom/ironsource/D5;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->b:Z

    return-void
.end method

.method private a()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 2
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 3

    const/16 v0, 0x3e9

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5
    iget-object p1, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->a:Lcom/ironsource/sdk/controller/v;

    if-eqz p1, :cond_c

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/v;->z()V

    .line 9
    :cond_c
    sget-object p1, Lcom/ironsource/D5;->Y6:Lcom/ironsource/D5;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->a(Lcom/ironsource/D5;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/ironsource/D5;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/D5;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Lcom/ironsource/D5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static synthetic a(Ljava/util/Map;Lcom/ironsource/D5;)V
    .registers 6

    const-string v0, "ext1"

    if-eqz p0, :cond_a

    .line 33
    :try_start_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    :goto_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strategy:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ironsource/u9;->c:Lcom/ironsource/u9;

    .line 36
    invoke-virtual {v2}, Lcom/ironsource/u9;->c()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 38
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4f

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 41
    :cond_4f
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_52
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 45
    new-instance v0, Lcom/ironsource/C5;

    invoke-direct {v0, p1, p0}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 46
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p0

    invoke-interface {p0}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_67} :catch_68

    return-void

    :catch_68
    move-exception p0

    .line 48
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_48

    .line 4
    iget-object p1, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->a:Lcom/ironsource/sdk/controller/v;

    if-eqz p1, :cond_10

    .line 5
    iget-boolean p3, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->b:Z

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/sdk/controller/v;->a(IZ)V

    .line 8
    :cond_10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resultCode:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    iget-boolean p3, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->b:Z

    if-eqz p3, :cond_3b

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",destroyCalled:true"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    :cond_3b
    const-string p3, "ext1"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object p2, Lcom/ironsource/D5;->c7:Lcom/ironsource/D5;

    invoke-direct {p0, p2, p1}, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->a(Lcom/ironsource/D5;Ljava/util/Map;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    const-string p1, "InlineStoreActivity"

    const-string v0, "onCreate()"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_a
    invoke-static {p0}, Lcom/ironsource/W9;->b(Landroid/content/Context;)Lcom/ironsource/W9;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/ironsource/W9;->a()Lcom/ironsource/sdk/controller/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/e;->k()Lcom/ironsource/sdk/controller/l;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/controller/v;

    iput-object p1, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->a:Lcom/ironsource/sdk/controller/v;

    .line 10
    invoke-direct {p0}, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->b()V

    .line 13
    invoke-direct {p0}, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->a()V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 19
    const-string v0, "inline_store_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 20
    invoke-direct {p0, p1}, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->a(Landroid/content/Intent;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception p1

    .line 22
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 23
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->a:Lcom/ironsource/sdk/controller/v;

    if-eqz v0, :cond_50

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/v;->j(Ljava/lang/String;)V

    .line 28
    :cond_50
    sget-object p1, Lcom/ironsource/D5;->b7:Lcom/ironsource/D5;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->a(Lcom/ironsource/D5;Ljava/util/Map;)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->a:Lcom/ironsource/sdk/controller/v;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    .line 3
    const-string v2, "inlineStoreClose"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/v;->a(ZLjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 3
    const-string v0, "destroy_inline_store"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 4
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "onNewIntent() - destroy inline store request detected"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->b:Z

    :cond_15
    return-void
.end method

.method public onPause()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->a:Lcom/ironsource/sdk/controller/v;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 3
    const-string v2, "inlineStoreOpen"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/v;->a(ZLjava/lang/String;)V

    :cond_d
    return-void
.end method

###### Class com.unity3d.ironsourceads.internal.services.InlineStoreActivity.a (com.unity3d.ironsourceads.internal.services.InlineStoreActivity$a)
.class Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "inline_store_intent"

.field static final b:Ljava/lang/String; = "destroy_inline_store"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.ironsourceads.internal.services.InlineStoreActivity.b (com.unity3d.ironsourceads.internal.services.InlineStoreActivity$b)
.class public Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/h;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/ironsource/h;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;->a:Lcom/ironsource/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;->a:Lcom/ironsource/h;

    invoke-interface {v0, p1}, Lcom/ironsource/h;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;->b:Landroid/content/Intent;

    const-string v1, "inline_store_intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1
.end method

.method public a(Landroid/content/Intent;)Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;->b:Landroid/content/Intent;

    return-object p0
.end method

###### Class com.unity3d.ironsourceads.internal.services.InlineStoreActivity$$ExternalSyntheticLambda0 (com.unity3d.ironsourceads.internal.services.InlineStoreActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Lcom/ironsource/D5;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/ironsource/D5;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/D5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/D5;

    invoke-static {v0, v1}, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;->$r8$lambda$YbYm0xP7ve7hLOq5txMvVO_5qSo(Ljava/util/Map;Lcom/ironsource/D5;)V

    return-void
.end method
