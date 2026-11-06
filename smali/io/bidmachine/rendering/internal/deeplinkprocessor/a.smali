###### Class io.bidmachine.rendering.internal.deeplinkprocessor.a (io.bidmachine.rendering.internal.deeplinkprocessor.a)
.class public final Lio/bidmachine/rendering/internal/deeplinkprocessor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/deeplinkprocessor/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;,
        Lio/bidmachine/rendering/internal/deeplinkprocessor/a$c;,
        Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;,
        Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;,
        Lio/bidmachine/rendering/internal/deeplinkprocessor/a$b;
    }
.end annotation


# static fields
.field public static final b:Lio/bidmachine/rendering/internal/deeplinkprocessor/a$b;


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/deeplinkprocessor/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a;->b:Lio/bidmachine/rendering/internal/deeplinkprocessor/a$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/bidmachine/rendering/internal/deeplinkprocessor/c;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/deeplinkprocessor/c;-><init>()V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a;->a:Lio/bidmachine/rendering/internal/deeplinkprocessor/c;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "primaryUrl"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BMDeeplinkProcessor"

    const/4 v2, 0x0

    if-eqz v0, :cond_b3

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_b3

    .line 12
    :cond_1d
    invoke-static {v0}, Lio/bidmachine/util/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_36

    .line 14
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "processUrl (primaryUri is null)"

    invoke-static {v1, p2, p1}, Lio/bidmachine/iab/utils/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 17
    sget-object p2, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p2

    .line 18
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 24
    :cond_36
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_aa

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2d5fc61a

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_87

    const v3, 0x8a887d1

    if-eq v2, v3, :cond_4d

    goto :goto_aa

    :cond_4d
    const-string v2, "inlineinstalls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 26
    new-instance v1, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;

    invoke-direct {v1, p1, p2, p3}, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;-><init>(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    .line 31
    iget-object p2, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a;->a:Lio/bidmachine/rendering/internal/deeplinkprocessor/c;

    invoke-virtual {p2, v0}, Lio/bidmachine/rendering/internal/deeplinkprocessor/c;->a(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_71

    .line 32
    iget-object p2, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a;->a:Lio/bidmachine/rendering/internal/deeplinkprocessor/c;

    .line 33
    sget-object p3, Lio/bidmachine/util/TopActivityHolder;->INSTANCE:Lio/bidmachine/util/TopActivityHolder;

    invoke-virtual {p3}, Lio/bidmachine/util/TopActivityHolder;->getTopActivity()Landroid/app/Activity;

    move-result-object p3

    if-eqz p3, :cond_6d

    move-object p1, p3

    .line 34
    :cond_6d
    invoke-virtual {p2, p1, v0, v1}, Lio/bidmachine/rendering/internal/deeplinkprocessor/c;->a(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void

    .line 40
    :cond_71
    new-instance p2, Lio/bidmachine/util/network/NetworkRequest$Builder;

    sget-object p3, Lio/bidmachine/util/network/Method;->Get:Lio/bidmachine/util/network/Method;

    invoke-direct {p2, v0, p3}, Lio/bidmachine/util/network/NetworkRequest$Builder;-><init>(Landroid/net/Uri;Lio/bidmachine/util/network/Method;)V

    .line 42
    new-instance p3, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;

    .line 44
    iget-object v0, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a;->a:Lio/bidmachine/rendering/internal/deeplinkprocessor/c;

    .line 45
    invoke-direct {p3, p1, v0, v1}, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;-><init>(Landroid/content/Context;Lio/bidmachine/rendering/internal/deeplinkprocessor/c;Lio/bidmachine/util/Executable;)V

    .line 46
    invoke-virtual {p2, p3}, Lio/bidmachine/util/network/NetworkRequest$Builder;->setMetadataListener(Lio/bidmachine/util/network/NetworkRequest$MetadataListener;)Lio/bidmachine/util/network/NetworkRequest$Builder;

    move-result-object p1

    .line 53
    invoke-static {p1, v5, v4, v5}, Lio/bidmachine/util/network/NetworkRequest$Builder;->send$default(Lio/bidmachine/util/network/NetworkRequest$Builder;Lio/bidmachine/util/taskmanager/TaskManager;ILjava/lang/Object;)Lio/bidmachine/util/network/NetworkRequest;

    return-void

    .line 54
    :cond_87
    const-string v2, "clickproxy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    goto :goto_aa

    .line 81
    :cond_90
    new-instance v1, Lio/bidmachine/util/network/NetworkRequest$Builder;

    sget-object v2, Lio/bidmachine/util/network/Method;->Get:Lio/bidmachine/util/network/Method;

    invoke-direct {v1, v0, v2}, Lio/bidmachine/util/network/NetworkRequest$Builder;-><init>(Landroid/net/Uri;Lio/bidmachine/util/network/Method;)V

    .line 82
    sget-object v0, Lio/bidmachine/util/network/Redirect;->None:Lio/bidmachine/util/network/Redirect;

    invoke-virtual {v1, v0}, Lio/bidmachine/util/network/NetworkRequest$Builder;->setRedirect(Lio/bidmachine/util/network/Redirect;)Lio/bidmachine/util/network/NetworkRequest$Builder;

    move-result-object v0

    .line 84
    new-instance v1, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;

    invoke-direct {v1, p1, p2, p3}, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;-><init>(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    .line 85
    invoke-virtual {v0, v1}, Lio/bidmachine/util/network/NetworkRequest$Builder;->setMetadataListener(Lio/bidmachine/util/network/NetworkRequest$MetadataListener;)Lio/bidmachine/util/network/NetworkRequest$Builder;

    move-result-object p1

    .line 92
    invoke-static {p1, v5, v4, v5}, Lio/bidmachine/util/network/NetworkRequest$Builder;->send$default(Lio/bidmachine/util/network/NetworkRequest$Builder;Lio/bidmachine/util/taskmanager/TaskManager;ILjava/lang/Object;)Lio/bidmachine/util/network/NetworkRequest;

    return-void

    .line 99
    :cond_aa
    :goto_aa
    new-instance v1, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;

    invoke-direct {v1, p1, p2, p3}, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;-><init>(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    .line 100
    invoke-static {p1, v0, v1}, Lio/bidmachine/rendering/utils/UrlHandler;->openUrl(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void

    .line 101
    :cond_b3
    :goto_b3
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "processUrl (primaryUrl is null or empty)"

    invoke-static {v1, p2, p1}, Lio/bidmachine/iab/utils/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 104
    sget-object p2, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p2

    .line 105
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .registers 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bmlink"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.rendering.internal.deeplinkprocessor.a.C1181a (io.bidmachine.rendering.internal.deeplinkprocessor.a$a)
.class public final Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/network/NetworkRequest$MetadataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/deeplinkprocessor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lio/bidmachine/util/Executable;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;->a:Landroid/net/Uri;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;->b:Lio/bidmachine/util/Executable;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceived(Lio/bidmachine/util/network/ResponseMetadata;)V
    .registers 6

    if-nez p1, :cond_10

    .line 1
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 2
    sget-object v0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {v0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;->b:Lio/bidmachine/util/Executable;

    .line 4
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 10
    :cond_10
    invoke-virtual {p1}, Lio/bidmachine/util/network/ResponseMetadata;->getCode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_26

    .line 11
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 12
    sget-object v0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {v0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;->b:Lio/bidmachine/util/Executable;

    .line 14
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 20
    :cond_26
    new-instance v0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;

    .line 21
    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;->c:Landroid/content/Context;

    .line 22
    iget-object v2, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;->a:Landroid/net/Uri;

    .line 23
    iget-object v3, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;->b:Lio/bidmachine/util/Executable;

    .line 24
    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;-><init>(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    .line 29
    invoke-virtual {p1}, Lio/bidmachine/util/network/ResponseMetadata;->getCode()I

    move-result v1

    const/16 v2, 0x190

    if-gt v2, v1, :cond_49

    const/16 v2, 0x258

    if-ge v1, v2, :cond_49

    .line 30
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 31
    sget-object v1, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {v1}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object v1

    .line 32
    invoke-virtual {p1, v1, v0}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 39
    :cond_49
    const-string v1, "Location"

    invoke-virtual {p1, v1}, Lio/bidmachine/util/network/ResponseMetadata;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_56

    invoke-static {p1}, Lio/bidmachine/util/UrlUtilsKt;->parseUriSafely(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_57

    :cond_56
    const/4 p1, 0x0

    :goto_57
    if-nez p1, :cond_65

    .line 41
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 42
    sget-object v1, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {v1}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object v1

    .line 43
    invoke-virtual {p1, v1, v0}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 51
    :cond_65
    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$a;->c:Landroid/content/Context;

    .line 52
    invoke-static {v1, p1, v0}, Lio/bidmachine/rendering/utils/UrlHandler;->openUrl(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.deeplinkprocessor.a.b (io.bidmachine.rendering.internal.deeplinkprocessor.a$b)
.class public final Lio/bidmachine/rendering/internal/deeplinkprocessor/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/deeplinkprocessor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$b;-><init>()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.deeplinkprocessor.a.c (io.bidmachine.rendering.internal.deeplinkprocessor.a$c)
.class public final Lio/bidmachine/rendering/internal/deeplinkprocessor/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/Executable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/deeplinkprocessor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lio/bidmachine/util/Executable;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 4

    const-string v0, "baseUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$c;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$c;->b:Lio/bidmachine/util/Executable;

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/util/ProcessUrlResult;)V
    .registers 4

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/util/ProcessUrlResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$c;->a:Landroid/net/Uri;

    const-string v1, "fallbackTrackingUrl"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UrlHandler;->track$bidmachine_android_sdk_bb_3_8_0(Ljava/lang/String;)V

    .line 4
    :cond_16
    sget-object v0, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$c;->b:Lio/bidmachine/util/Executable;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/util/ProcessUrlResult;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$c;->a(Lio/bidmachine/util/ProcessUrlResult;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.deeplinkprocessor.a.d (io.bidmachine.rendering.internal.deeplinkprocessor.a$d)
.class public final Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/network/NetworkRequest$MetadataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/deeplinkprocessor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/deeplinkprocessor/c;

.field public final b:Lio/bidmachine/util/Executable;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/rendering/internal/deeplinkprocessor/c;Lio/bidmachine/util/Executable;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineInstallsDeeplinkProcessor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;->a:Lio/bidmachine/rendering/internal/deeplinkprocessor/c;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;->b:Lio/bidmachine/util/Executable;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceived(Lio/bidmachine/util/network/ResponseMetadata;)V
    .registers 5

    if-nez p1, :cond_10

    .line 1
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 2
    sget-object v0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {v0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;->b:Lio/bidmachine/util/Executable;

    .line 4
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 10
    :cond_10
    invoke-virtual {p1}, Lio/bidmachine/util/network/ResponseMetadata;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2a

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2a

    .line 12
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 13
    sget-object v0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {v0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;->b:Lio/bidmachine/util/Executable;

    .line 15
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 22
    :cond_2a
    invoke-virtual {p1}, Lio/bidmachine/util/network/ResponseMetadata;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "responseMetadata.url.toURI().toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/bidmachine/util/UrlUtilsKt;->parseUriSafely(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_4f

    .line 24
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 25
    sget-object v0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {v0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;->b:Lio/bidmachine/util/Executable;

    .line 27
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 33
    :cond_4f
    iget-object v0, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;->a:Lio/bidmachine/rendering/internal/deeplinkprocessor/c;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/deeplinkprocessor/c;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 34
    iget-object v0, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;->a:Lio/bidmachine/rendering/internal/deeplinkprocessor/c;

    .line 35
    sget-object v1, Lio/bidmachine/util/TopActivityHolder;->INSTANCE:Lio/bidmachine/util/TopActivityHolder;

    invoke-virtual {v1}, Lio/bidmachine/util/TopActivityHolder;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_62

    goto :goto_64

    :cond_62
    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;->c:Landroid/content/Context;

    .line 37
    :goto_64
    iget-object v2, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;->b:Lio/bidmachine/util/Executable;

    .line 38
    invoke-virtual {v0, v1, p1, v2}, Lio/bidmachine/rendering/internal/deeplinkprocessor/c;->a(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void

    .line 45
    :cond_6a
    iget-object v0, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;->c:Landroid/content/Context;

    .line 47
    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$d;->b:Lio/bidmachine/util/Executable;

    .line 48
    invoke-static {v0, p1, v1}, Lio/bidmachine/rendering/utils/UrlHandler;->openUrl(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.deeplinkprocessor.a.e (io.bidmachine.rendering.internal.deeplinkprocessor.a$e)
.class public final Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/Executable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/deeplinkprocessor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lio/bidmachine/util/Executable;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;->a:Landroid/net/Uri;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;->b:Lio/bidmachine/util/Executable;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/util/ProcessUrlResult;)V
    .registers 6

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/util/ProcessUrlResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;->a:Landroid/net/Uri;

    const-string v1, "primaryTrackingUrl"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UrlHandler;->track$bidmachine_android_sdk_bb_3_8_0(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 5
    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;->b:Lio/bidmachine/util/Executable;

    .line 6
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 12
    :cond_1e
    iget-object p1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;->a:Landroid/net/Uri;

    const-string v0, "fallbackUrl"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_52

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_52

    .line 20
    :cond_2f
    invoke-static {p1}, Lio/bidmachine/util/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_43

    .line 22
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 23
    sget-object v0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {v0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;->b:Lio/bidmachine/util/Executable;

    .line 25
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 33
    :cond_43
    iget-object v0, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;->c:Landroid/content/Context;

    .line 35
    new-instance v1, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$c;

    .line 36
    iget-object v2, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;->a:Landroid/net/Uri;

    .line 37
    iget-object v3, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;->b:Lio/bidmachine/util/Executable;

    .line 38
    invoke-direct {v1, v2, v3}, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$c;-><init>(Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    .line 39
    invoke-static {v0, p1, v1}, Lio/bidmachine/rendering/utils/UrlHandler;->openUrl(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void

    .line 40
    :cond_52
    :goto_52
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 41
    sget-object v0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {v0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;->b:Lio/bidmachine/util/Executable;

    .line 43
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/util/ProcessUrlResult;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/deeplinkprocessor/a$e;->a(Lio/bidmachine/util/ProcessUrlResult;)V

    return-void
.end method
