###### Class com.ironsource.P8 (com.ironsource.P8)
.class public interface abstract Lcom/ironsource/P8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/P8$a;,
        Lcom/ironsource/P8$b;
    }
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b(Lcom/ironsource/P8$b;)Z
.end method

###### Class com.ironsource.P8.a (com.ironsource.P8$a)
.class public interface abstract Lcom/ironsource/P8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/P8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/ironsource/P8$b;)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/P8$b;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.ironsource.P8.b (com.ironsource.P8$b)
.class public interface abstract Lcom/ironsource/P8$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/P8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract b()I
.end method

.method public abstract c()Ljava/lang/String;
.end method
