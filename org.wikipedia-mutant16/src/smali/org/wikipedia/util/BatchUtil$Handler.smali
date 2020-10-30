.class public interface abstract Lorg/wikipedia/util/BatchUtil$Handler;
.super Ljava/lang/Object;
.source "BatchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/util/BatchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract handleBatch(Ljava/util/List;ILorg/wikipedia/util/BatchUtil$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;I",
            "Lorg/wikipedia/util/BatchUtil$Callback<",
            "TT;>;)V"
        }
    .end annotation
.end method
