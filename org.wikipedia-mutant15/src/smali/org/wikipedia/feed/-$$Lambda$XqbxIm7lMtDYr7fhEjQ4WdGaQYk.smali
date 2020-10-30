.class public final synthetic Lorg/wikipedia/feed/-$$Lambda$XqbxIm7lMtDYr7fhEjQ4WdGaQYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/FeedFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/FeedFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/-$$Lambda$XqbxIm7lMtDYr7fhEjQ4WdGaQYk;->f$0:Lorg/wikipedia/feed/FeedFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/feed/-$$Lambda$XqbxIm7lMtDYr7fhEjQ4WdGaQYk;->f$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedFragment;->refresh()V

    return-void
.end method
