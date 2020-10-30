.class public final synthetic Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayPagesViewHolder$1$Wn7TlnLdO-YE9PZSH_75C6xFLsY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;

.field public final synthetic f$1:Lorg/wikipedia/history/HistoryEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayPagesViewHolder$1$Wn7TlnLdO-YE9PZSH_75C6xFLsY;->f$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;

    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayPagesViewHolder$1$Wn7TlnLdO-YE9PZSH_75C6xFLsY;->f$1:Lorg/wikipedia/history/HistoryEntry;

    return-void
.end method


# virtual methods
.method public final onMoveClicked(J)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayPagesViewHolder$1$Wn7TlnLdO-YE9PZSH_75C6xFLsY;->f$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayPagesViewHolder$1$Wn7TlnLdO-YE9PZSH_75C6xFLsY;->f$1:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0, v1, p1, p2}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->lambda$onAddRequest$0$OnThisDayPagesViewHolder$1(Lorg/wikipedia/history/HistoryEntry;J)V

    return-void
.end method
