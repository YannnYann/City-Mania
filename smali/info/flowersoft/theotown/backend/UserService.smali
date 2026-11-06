###### Class info.flowersoft.theotown.backend.UserService (info.flowersoft.theotown.backend.UserService)
.class public final Linfo/flowersoft/theotown/backend/UserService;
.super Linfo/flowersoft/theotown/backend/Service;
.source "UserService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    const-string v0, "user/user.php"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/backend/Service;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public unlinkSteamAccount(Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;)Linfo/flowersoft/theotown/backend/Backend$Task;
    .registers 4

    .line 59
    const-string v0, "unlink steam"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/backend/UserService$3;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/backend/UserService$3;-><init>(Linfo/flowersoft/theotown/backend/UserService;Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;)V

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.backend.UserService.AnonymousClass3 (info.flowersoft.theotown.backend.UserService$3)
.class public Linfo/flowersoft/theotown/backend/UserService$3;
.super Ljava/lang/Object;
.source "UserService.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/UserService;->unlinkSteamAccount(Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;)Linfo/flowersoft/theotown/backend/Backend$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/UserService;

.field public final synthetic val$handler:Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/UserService;Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/UserService$3;->this$0:Linfo/flowersoft/theotown/backend/UserService;

    iput-object p2, p0, Linfo/flowersoft/theotown/backend/UserService$3;->val$handler:Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/UserService$3;->val$handler:Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;

    const-string v1, "status"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 62
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/UserService$3;->val$handler:Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;

    invoke-interface {p1}, Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;->onSuccess()V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.UserService.UnlinkSteamHandler (info.flowersoft.theotown.backend.UserService$UnlinkSteamHandler)
.class public interface abstract Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;
.super Ljava/lang/Object;
.source "UserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/backend/UserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnlinkSteamHandler"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onSuccess()V
.end method
