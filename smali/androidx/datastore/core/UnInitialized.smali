###### Class androidx.datastore.core.UnInitialized (androidx.datastore.core.UnInitialized)
.class public final Landroidx/datastore/core/UnInitialized;
.super Landroidx/datastore/core/State;
.source "State.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/core/State<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/datastore/core/UnInitialized;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Landroidx/datastore/core/UnInitialized;

    invoke-direct {v0}, Landroidx/datastore/core/UnInitialized;-><init>()V

    sput-object v0, Landroidx/datastore/core/UnInitialized;->INSTANCE:Landroidx/datastore/core/UnInitialized;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1}, Landroidx/datastore/core/State;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
