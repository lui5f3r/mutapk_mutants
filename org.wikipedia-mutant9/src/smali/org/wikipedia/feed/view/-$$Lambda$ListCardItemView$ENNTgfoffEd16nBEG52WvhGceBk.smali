.class public final synthetic Lorg/wikipedia/feed/view/-$$Lambda$ListCardItemView$ENNTgfoffEd16nBEG52WvhGceBk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/view/ListCardItemView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/view/ListCardItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/view/-$$Lambda$ListCardItemView$ENNTgfoffEd16nBEG52WvhGceBk;->f$0:Lorg/wikipedia/feed/view/ListCardItemView;

    return-void
.end method


# virtual methods
.method public final onFinish(Z)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/feed/view/-$$Lambda$ListCardItemView$ENNTgfoffEd16nBEG52WvhGceBk;->f$0:Lorg/wikipedia/feed/view/ListCardItemView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/ListCardItemView;->lambda$setHistoryEntry$0$ListCardItemView(Z)V

    return-void
.end method
