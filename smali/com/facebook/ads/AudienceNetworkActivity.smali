###### Class com.facebook.ads.AudienceNetworkActivity (com.facebook.ads.AudienceNetworkActivity)
.class public Lcom/facebook/ads/AudienceNetworkActivity;
.super Landroid/app/Activity;
.source "AudienceNetworkActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingSuperCall"
    }
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

.field private final mAudienceNetworkActivityParentApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/AudienceNetworkActivity$1;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityParentApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    return-void
.end method

.method public static synthetic access$001(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/os/Bundle;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$1001(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$101(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public static synthetic access$1101(Lcom/facebook/ads/AudienceNetworkActivity;IILandroid/content/Intent;)V
    .registers 4

    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic access$1201(Lcom/facebook/ads/AudienceNetworkActivity;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$201(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public static synthetic access$301(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public static synthetic access$401(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public static synthetic access$501(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/os/Bundle;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$601(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic access$701(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public static synthetic access$801(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public static synthetic access$901(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/content/res/Configuration;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->finish(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 110
    invoke-static {p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityParentApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 111
    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createAudienceNetworkActivity(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;)Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 112
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-le p1, v0, :cond_2a

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le p1, v0, :cond_2a

    .line 115
    invoke-static {p0}, Lcom/facebook/ads/AudienceNetworkActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/facebook/ads/AudienceNetworkActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/AudienceNetworkActivity$2;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    const/4 v1, 0x0

    .line 116
    invoke-static {p1, v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_2a
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

###### Class com.facebook.ads.AudienceNetworkActivity.AnonymousClass1 (com.facebook.ads.AudienceNetworkActivity$1)
.class public Lcom/facebook/ads/AudienceNetworkActivity$1;
.super Ljava/lang/Object;
.source "AudienceNetworkActivity.java"

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AudienceNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/facebook/ads/AudienceNetworkActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 103
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/facebook/ads/AudienceNetworkActivity;->access$1201(Lcom/facebook/ads/AudienceNetworkActivity;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public finish(I)V
    .registers 2

    .line 69
    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$601(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/AudienceNetworkActivity;->access$1101(Lcom/facebook/ads/AudienceNetworkActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$801(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$901(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$001(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$701(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$201(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$301(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$501(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$101(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$401(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$1001(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

###### Class com.facebook.ads.AudienceNetworkActivity.AnonymousClass2 (com.facebook.ads.AudienceNetworkActivity$2)
.class public Lcom/facebook/ads/AudienceNetworkActivity$2;
.super Ljava/lang/Object;
.source "AudienceNetworkActivity.java"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AudienceNetworkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/facebook/ads/AudienceNetworkActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity$2;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackInvoked()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$2;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->onBackPressed()V

    return-void
.end method
