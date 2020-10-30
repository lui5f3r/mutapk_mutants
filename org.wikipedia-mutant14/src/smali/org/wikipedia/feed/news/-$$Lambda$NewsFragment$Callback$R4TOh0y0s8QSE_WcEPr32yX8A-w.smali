.class public final synthetic Lorg/wikipedia/feed/news/-$$Lambda$NewsFragment$Callback$R4TOh0y0s8QSE_WcEPr32yX8A-w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/news/NewsFragment$Callback;

.field public final synthetic f$1:Lorg/wikipedia/history/HistoryEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/news/NewsFragment$Callback;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/news/-$$Lambda$NewsFragment$Callback$R4TOh0y0s8QSE_WcEPr32yX8A-w;->f$0:Lorg/wikipedia/feed/news/NewsFragment$Callback;

    iput-object p2, p0, Lorg/wikipedia/feed/news/-$$Lambda$NewsFragment$Callback$R4TOh0y0s8QSE_WcEPr32yX8A-w;->f$1:Lorg/wikipedia/history/HistoryEntry;

    return-void
.end method


# virtual methods
.method public final onMoveClicked(J)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/feed/news/-$$Lambda$NewsFragment$Callback$R4TOh0y0s8QSE_WcEPr32yX8A-w;->f$0:Lorg/wikipedia/feed/news/NewsFragment$Callback;

    iget-object v1, p0, Lorg/wikipedia/feed/news/-$$Lambda$NewsFragment$Callback$R4TOh0y0s8QSE_WcEPr32yX8A-w;->f$1:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0, v1, p1, p2}, Lorg/wikipedia/feed/news/NewsFragment$Callback;->lambda$onAddPageToList$0$NewsFragment$Callback(Lorg/wikipedia/history/HistoryEntry;J)V

    return-void
.end method
