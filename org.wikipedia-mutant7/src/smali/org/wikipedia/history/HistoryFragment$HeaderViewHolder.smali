.class Lorg/wikipedia/history/HistoryFragment$HeaderViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/history/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field headerText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 311
    invoke-direct {p0, p1}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090387

    .line 312
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$HeaderViewHolder;->headerText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method bindItem(Ljava/lang/String;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HeaderViewHolder;->headerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
