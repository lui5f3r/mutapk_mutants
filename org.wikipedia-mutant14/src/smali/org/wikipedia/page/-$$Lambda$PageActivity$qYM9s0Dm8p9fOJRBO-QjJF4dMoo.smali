.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageActivity$qYM9s0Dm8p9fOJRBO-QjJF4dMoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageActivity;

.field public final synthetic f$1:Lorg/wikipedia/page/PageActivity$TabPosition;

.field public final synthetic f$2:Lorg/wikipedia/page/PageTitle;

.field public final synthetic f$3:Lorg/wikipedia/history/HistoryEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageActivity;Lorg/wikipedia/page/PageActivity$TabPosition;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$qYM9s0Dm8p9fOJRBO-QjJF4dMoo;->f$0:Lorg/wikipedia/page/PageActivity;

    iput-object p2, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$qYM9s0Dm8p9fOJRBO-QjJF4dMoo;->f$1:Lorg/wikipedia/page/PageActivity$TabPosition;

    iput-object p3, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$qYM9s0Dm8p9fOJRBO-QjJF4dMoo;->f$2:Lorg/wikipedia/page/PageTitle;

    iput-object p4, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$qYM9s0Dm8p9fOJRBO-QjJF4dMoo;->f$3:Lorg/wikipedia/history/HistoryEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$qYM9s0Dm8p9fOJRBO-QjJF4dMoo;->f$0:Lorg/wikipedia/page/PageActivity;

    iget-object v1, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$qYM9s0Dm8p9fOJRBO-QjJF4dMoo;->f$1:Lorg/wikipedia/page/PageActivity$TabPosition;

    iget-object v2, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$qYM9s0Dm8p9fOJRBO-QjJF4dMoo;->f$2:Lorg/wikipedia/page/PageTitle;

    iget-object v3, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$qYM9s0Dm8p9fOJRBO-QjJF4dMoo;->f$3:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0, v1, v2, v3}, Lorg/wikipedia/page/PageActivity;->lambda$loadPage$1$PageActivity(Lorg/wikipedia/page/PageActivity$TabPosition;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    return-void
.end method
