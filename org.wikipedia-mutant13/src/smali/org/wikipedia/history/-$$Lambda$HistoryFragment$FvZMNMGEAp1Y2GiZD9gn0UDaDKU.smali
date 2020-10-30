.class public final synthetic Lorg/wikipedia/history/-$$Lambda$HistoryFragment$FvZMNMGEAp1Y2GiZD9gn0UDaDKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/history/HistoryFragment;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/history/HistoryFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$FvZMNMGEAp1Y2GiZD9gn0UDaDKU;->f$0:Lorg/wikipedia/history/HistoryFragment;

    iput-object p2, p0, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$FvZMNMGEAp1Y2GiZD9gn0UDaDKU;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$FvZMNMGEAp1Y2GiZD9gn0UDaDKU;->f$0:Lorg/wikipedia/history/HistoryFragment;

    iget-object v1, p0, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$FvZMNMGEAp1Y2GiZD9gn0UDaDKU;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/history/HistoryFragment;->lambda$showDeleteItemsUndoSnackbar$0$HistoryFragment(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method
