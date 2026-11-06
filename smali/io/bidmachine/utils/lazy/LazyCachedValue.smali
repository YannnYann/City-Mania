###### Class io.bidmachine.utils.lazy.LazyCachedValue (io.bidmachine.utils.lazy.LazyCachedValue)
.class public Lio/bidmachine/utils/lazy/LazyCachedValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/utils/lazy/LazyValue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final lazyValue:Lio/bidmachine/utils/lazy/LazyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/utils/lazy/LazyCachedValue;->lazyValue:Lio/bidmachine/utils/lazy/LazyValue;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/lazy/LazyCachedValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 3
    iget-object v0, p0, Lio/bidmachine/utils/lazy/LazyCachedValue;->lazyValue:Lio/bidmachine/utils/lazy/LazyValue;

    invoke-interface {v0}, Lio/bidmachine/utils/lazy/LazyValue;->get()Ljava/lang/Object;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lio/bidmachine/utils/lazy/LazyCachedValue;->value:Ljava/lang/Object;

    :cond_c
    return-object v0
.end method
