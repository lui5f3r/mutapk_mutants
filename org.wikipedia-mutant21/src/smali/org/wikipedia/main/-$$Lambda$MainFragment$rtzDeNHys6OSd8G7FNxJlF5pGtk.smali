.class public final synthetic Lorg/wikipedia/main/-$$Lambda$MainFragment$rtzDeNHys6OSd8G7FNxJlF5pGtk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/main/MainFragment;

.field public final synthetic f$1:Lorg/wikipedia/history/HistoryEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/main/MainFragment;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/main/-$$Lambda$MainFragment$rtzDeNHys6OSd8G7FNxJlF5pGtk;->f$0:Lorg/wikipedia/main/MainFragment;

    iput-object p2, p0, Lorg/wikipedia/main/-$$Lambda$MainFragment$rtzDeNHys6OSd8G7FNxJlF5pGtk;->f$1:Lorg/wikipedia/history/HistoryEntry;

    return-void
.end method


# virtual methods
.method public final onMoveClicked(J)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/main/-$$Lambda$MainFragment$rtzDeNHys6OSd8G7FNxJlF5pGtk;->f$0:Lorg/wikipedia/main/MainFragment;

    iget-object v1, p0, Lorg/wikipedia/main/-$$Lambda$MainFragment$rtzDeNHys6OSd8G7FNxJlF5pGtk;->f$1:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0, v1, p1, p2}, Lorg/wikipedia/main/MainFragment;->lambda$onFeedAddPageToList$1$MainFragment(Lorg/wikipedia/history/HistoryEntry;J)V

    return-void
.end method