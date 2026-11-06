###### Class com.ironsource.C3627h0 (com.ironsource.h0)
.class public final Lcom/ironsource/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;


# instance fields
.field private final a:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

.field private final b:Lcom/ironsource/yb;


# direct methods
.method public static synthetic $r8$lambda$GvgwMrwYRsBeiu40fndSjZh0FsQ(Lcom/ironsource/h0;Lcom/ironsource/c9;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/h0;->a(Lcom/ironsource/h0;Lcom/ironsource/c9;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;Lcom/ironsource/yb;)V
    .registers 4

    const-string v0, "adQualityBridge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tools"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/h0;->a:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    .line 3
    iput-object p2, p0, Lcom/ironsource/h0;->b:Lcom/ironsource/yb;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;Lcom/ironsource/yb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_9

    .line 4
    new-instance p2, Lcom/ironsource/yb;

    invoke-direct {p2}, Lcom/ironsource/yb;-><init>()V

    .line 5
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/ironsource/h0;-><init>(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;Lcom/ironsource/yb;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/h0;Lcom/ironsource/c9;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/ironsource/h0;->a:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->sendCustomMediationRevenue$mediationsdk_release(Lcom/ironsource/c9;)V

    return-void
.end method


# virtual methods
.method public onImpressionSuccess(Lcom/ironsource/c9;)V
    .registers 4

    const-string v0, "impressionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/h0;->b:Lcom/ironsource/yb;

    new-instance v1, Lcom/ironsource/h0$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/h0$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/h0;Lcom/ironsource/c9;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.ironsource.h0$$ExternalSyntheticLambda0 (com.ironsource.h0$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/h0$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/h0;

.field public final synthetic f$1:Lcom/ironsource/c9;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/h0;Lcom/ironsource/c9;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/h0$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/h0;

    iput-object p2, p0, Lcom/ironsource/h0$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/c9;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/h0$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/h0;

    iget-object v1, p0, Lcom/ironsource/h0$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/c9;

    invoke-static {v0, v1}, Lcom/ironsource/h0;->$r8$lambda$GvgwMrwYRsBeiu40fndSjZh0FsQ(Lcom/ironsource/h0;Lcom/ironsource/c9;)V

    return-void
.end method
