###### Class io.bidmachine.util.ProcessUrlResult (io.bidmachine.util.ProcessUrlResult)
.class public final Lio/bidmachine/util/ProcessUrlResult;
.super Ljava/lang/Object;
.source "ProcessUrlResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/ProcessUrlResult$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

.field public static final FAIL:Lio/bidmachine/util/ProcessUrlResult;

.field public static final SUCCESS:Lio/bidmachine/util/ProcessUrlResult;


# instance fields
.field public final isSuccess:Z

.field public final systemComponent:Lio/bidmachine/util/SystemComponent;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/bidmachine/util/ProcessUrlResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/ProcessUrlResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    .line 7
    new-instance v0, Lio/bidmachine/util/ProcessUrlResult;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Lio/bidmachine/util/ProcessUrlResult;-><init>(ZLio/bidmachine/util/SystemComponent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/ProcessUrlResult;->SUCCESS:Lio/bidmachine/util/ProcessUrlResult;

    .line 8
    new-instance v0, Lio/bidmachine/util/ProcessUrlResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v3, v1}, Lio/bidmachine/util/ProcessUrlResult;-><init>(ZLio/bidmachine/util/SystemComponent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/ProcessUrlResult;->FAIL:Lio/bidmachine/util/ProcessUrlResult;

    return-void
.end method

.method public constructor <init>(ZLio/bidmachine/util/SystemComponent;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/bidmachine/util/ProcessUrlResult;->isSuccess:Z

    iput-object p2, p0, Lio/bidmachine/util/ProcessUrlResult;->systemComponent:Lio/bidmachine/util/SystemComponent;

    return-void
.end method

.method public synthetic constructor <init>(ZLio/bidmachine/util/SystemComponent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 3
    :cond_5
    invoke-direct {p0, p1, p2}, Lio/bidmachine/util/ProcessUrlResult;-><init>(ZLio/bidmachine/util/SystemComponent;)V

    return-void
.end method

.method public static final synthetic access$getFAIL$cp()Lio/bidmachine/util/ProcessUrlResult;
    .registers 1

    .line 3
    sget-object v0, Lio/bidmachine/util/ProcessUrlResult;->FAIL:Lio/bidmachine/util/ProcessUrlResult;

    return-object v0
.end method

.method public static final synthetic access$getSUCCESS$cp()Lio/bidmachine/util/ProcessUrlResult;
    .registers 1

    .line 3
    sget-object v0, Lio/bidmachine/util/ProcessUrlResult;->SUCCESS:Lio/bidmachine/util/ProcessUrlResult;

    return-object v0
.end method


# virtual methods
.method public final getSystemComponent()Lio/bidmachine/util/SystemComponent;
    .registers 2

    .line 3
    iget-object v0, p0, Lio/bidmachine/util/ProcessUrlResult;->systemComponent:Lio/bidmachine/util/SystemComponent;

    return-object v0
.end method

.method public final isSuccess()Z
    .registers 2

    .line 3
    iget-boolean v0, p0, Lio/bidmachine/util/ProcessUrlResult;->isSuccess:Z

    return v0
.end method

###### Class io.bidmachine.util.ProcessUrlResult.Companion (io.bidmachine.util.ProcessUrlResult$Companion)
.class public final Lio/bidmachine/util/ProcessUrlResult$Companion;
.super Ljava/lang/Object;
.source "ProcessUrlResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/ProcessUrlResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/ProcessUrlResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFAIL()Lio/bidmachine/util/ProcessUrlResult;
    .registers 2

    .line 8
    invoke-static {}, Lio/bidmachine/util/ProcessUrlResult;->access$getFAIL$cp()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object v0

    return-object v0
.end method

.method public final getSUCCESS()Lio/bidmachine/util/ProcessUrlResult;
    .registers 2

    .line 7
    invoke-static {}, Lio/bidmachine/util/ProcessUrlResult;->access$getSUCCESS$cp()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object v0

    return-object v0
.end method
