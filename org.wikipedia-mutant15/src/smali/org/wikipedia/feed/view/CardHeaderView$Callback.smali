.class public interface abstract Lorg/wikipedia/feed/view/CardHeaderView$Callback;
.super Ljava/lang/Object;
.source "CardHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/view/CardHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onRequestCustomize(Lorg/wikipedia/feed/model/Card;)V
.end method

.method public abstract onRequestDismissCard(Lorg/wikipedia/feed/model/Card;)Z
.end method

.method public abstract onRequestEditCardLanguages(Lorg/wikipedia/feed/model/Card;)V
.end method
