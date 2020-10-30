.class final Lorg/wikipedia/util/BatchUtil$1;
.super Ljava/lang/Object;
.source "BatchUtil.java"

# interfaces
.implements Lorg/wikipedia/util/BatchUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/util/BatchUtil;->makeBatches(Ljava/util/List;Lorg/wikipedia/util/BatchUtil$Handler;Lorg/wikipedia/util/BatchUtil$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/wikipedia/util/BatchUtil$Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/wikipedia/util/BatchUtil$Callback;


# direct methods
.method constructor <init>(Lorg/wikipedia/util/BatchUtil$Callback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/wikipedia/util/BatchUtil$1;->val$callback:Lorg/wikipedia/util/BatchUtil$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Throwable;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/wikipedia/util/BatchUtil$1;->val$callback:Lorg/wikipedia/util/BatchUtil$Callback;

    invoke-interface {v0, p1}, Lorg/wikipedia/util/BatchUtil$Callback;->failure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/wikipedia/util/BatchUtil$1;->val$callback:Lorg/wikipedia/util/BatchUtil$Callback;

    invoke-interface {v0, p1}, Lorg/wikipedia/util/BatchUtil$Callback;->success(Ljava/util/List;)V

    return-void
.end method
