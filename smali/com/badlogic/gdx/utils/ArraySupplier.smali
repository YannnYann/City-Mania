###### Class com.badlogic.gdx.utils.ArraySupplier (com.badlogic.gdx.utils.ArraySupplier)
.class public interface abstract Lcom/badlogic/gdx/utils/ArraySupplier;
.super Ljava/lang/Object;
.source "ArraySupplier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/badlogic/gdx/utils/ArraySupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ArraySupplier<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$NXkhvdf7J8xaRdx8PP5azXbR1WE(I)Ljava/lang/Object;
    .registers 1

    .line 9
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lcom/badlogic/gdx/utils/ArraySupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ArraySupplier$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/ArraySupplier;->ANY:Lcom/badlogic/gdx/utils/ArraySupplier;

    return-void
.end method

.method public static object()Lcom/badlogic/gdx/utils/ArraySupplier;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/badlogic/gdx/utils/ArraySupplier<",
            "[TT;>;"
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/badlogic/gdx/utils/ArraySupplier;->ANY:Lcom/badlogic/gdx/utils/ArraySupplier;

    return-object v0
.end method


# virtual methods
.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

###### Class com.badlogic.gdx.utils.ArraySupplier$$ExternalSyntheticLambda0 (com.badlogic.gdx.utils.ArraySupplier$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/badlogic/gdx/utils/ArraySupplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/badlogic/gdx/utils/ArraySupplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/ArraySupplier;->$r8$lambda$NXkhvdf7J8xaRdx8PP5azXbR1WE(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
