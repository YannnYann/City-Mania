###### Class info.flowersoft.theotown.stages.RecoveryMode (info.flowersoft.theotown.stages.RecoveryMode)
.class public final Linfo/flowersoft/theotown/stages/RecoveryMode;
.super Ljava/lang/Object;
.source "RecoveryStage.kt"


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/stages/RecoveryMode;

.field public static active:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/stages/RecoveryMode;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/RecoveryMode;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/stages/RecoveryMode;->INSTANCE:Linfo/flowersoft/theotown/stages/RecoveryMode;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActive()Z
    .registers 2

    .line 16
    sget-boolean v0, Linfo/flowersoft/theotown/stages/RecoveryMode;->active:Z

    return v0
.end method

.method public final setActive(Z)V
    .registers 2

    .line 16
    sput-boolean p1, Linfo/flowersoft/theotown/stages/RecoveryMode;->active:Z

    return-void
.end method
