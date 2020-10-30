.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$jVHkTfAAgpCy9CpCUXDXjagK79M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$jVHkTfAAgpCy9CpCUXDXjagK79M;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$jVHkTfAAgpCy9CpCUXDXjagK79M;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->lambda$maybeShowOnboarding$5$ReadingListsFragment(Landroid/view/View;)V

    return-void
.end method
